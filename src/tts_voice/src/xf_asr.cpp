/*************************************************************************
	> File Name: xf_asr.cpp
	> Author: Sunshengjin
	> Mail: 1012116832@qq.com
	> Created Time: 2017年09月15日 星期五 14时12分53秒
 ************************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "pthread.h"
#include "qisr.h"
#include "msp_cmn.h"
#include "msp_errors.h"
#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>
#define SAMPLE_RATE 16000
#define CHANNLE 1
#define FRAMES_SIZE 3200
#define FORMAT SND_PCM_FORMAT_S16_LE
#define PER_SAMPLE 2
#define DEVICE  "default"
#define	BUFFER_SIZE	4096
#define FRAME_LEN	640 
#define HINTS_SIZE  100 

 char data[10000];
 int flag_begin=0;
 int flag_understand=0;
 int flag_get=0;
    std::stringstream ss;
    std_msgs::String order;

int upload_userwords()
{
	char*			userwords	=	NULL;
	unsigned int	len			=	0;
	unsigned int	read_len	=	0;
	FILE*			fp			=	NULL;
	int				ret			=	-1;

	fp = fopen("/home/ssj/xunfei/bin/userwords.txt", "rb");
	if (NULL == fp)										
	{
		printf("\nopen [userwords.txt] failed! \n");
		goto upload_exit;
	}

	fseek(fp, 0, SEEK_END);
	len = ftell(fp); //获取音频文件大小
	fseek(fp, 0, SEEK_SET);  					
	
	userwords = (char*)malloc(len + 1);
	if (NULL == userwords)
	{
		printf("\nout of memory! \n");
		goto upload_exit;
	}

	read_len = fread((void*)userwords, 1, len, fp); //读取用户词表内容
	if (read_len != len)
	{
		printf("\nread [userwords.txt] failed!\n");
		goto upload_exit;
	}
	userwords[len] = '\0';
	
	MSPUploadData("userwords", userwords, len, "sub = uup, dtt = userword", &ret); //上传用户词表
	if (MSP_SUCCESS != ret)
	{
		printf("\nMSPUploadData failed ! errorCode: %d \n", ret);
		goto upload_exit;
	}
	
upload_exit:
	if (NULL != fp)
	{
		fclose(fp);
		fp = NULL;
	}	
	if (NULL != userwords)
	{
		free(userwords);
		userwords = NULL;
	}
	
	return ret;
}


void run_iat(const char* audio_file, const char* session_begin_params)
{
	const char*		session_id					=	NULL;
	char			rec_result[BUFFER_SIZE]		=	{NULL};	
	char			hints[HINTS_SIZE]			=	{NULL}; //hints为结束本次会话的原因描述，由用户自定义
	unsigned int	total_len					=	0; 
	int				aud_stat					=	MSP_AUDIO_SAMPLE_CONTINUE ;		//音频状态
	int				ep_stat						=	MSP_EP_LOOKING_FOR_SPEECH;		//端点检测
	int				rec_stat					=	MSP_REC_STATUS_SUCCESS ;			//识别状态
	int				errcode						=	MSP_SUCCESS ;
    
	FILE*			f_pcm						=	NULL;
	char*			p_pcm						=	NULL;
	long			pcm_count					=	0;
	long			pcm_size					=	0;
	long			read_size					=	0;

	
	if (NULL == audio_file)
		goto iat_exit;

	f_pcm = fopen(audio_file, "rb");
	if (NULL == f_pcm) 
	{
		printf("\nopen [%s] failed! \n", audio_file);
		goto iat_exit;
	}
	
	fseek(f_pcm, 0, SEEK_END);
	pcm_size = ftell(f_pcm); //获取音频文件大小 
	fseek(f_pcm, 0, SEEK_SET);		

	p_pcm = (char *)malloc(pcm_size);
	if (NULL == p_pcm)
	{
		printf("\nout of memory! \n");
		goto iat_exit;
	}

	read_size = fread((void *)p_pcm, 1, pcm_size, f_pcm); //读取音频文件内容
	if (read_size != pcm_size)
	{
		printf("\nread [%s] error!\n", audio_file);
		goto iat_exit;
	}
	
	printf("\n开始语音听写 ...\n");
	session_id = QISRSessionBegin(NULL, session_begin_params, &errcode); //听写不需要语法，第一个参数为NULL
	if (MSP_SUCCESS != errcode)
	{
		printf("\nQISRSessionBegin failed! error code:%d\n", errcode);
		goto iat_exit;
	}
	
	while (1) 
	{
		unsigned int len = 10 * FRAME_LEN; // 每次写入200ms音频(16k，16bit)：1帧音频20ms，10帧=200ms。16k采样率的16位音频，一帧的大小为640Byte
		int ret = 0;

		if (pcm_size < 2 * len) 
			len = pcm_size;
		if (len <= 0)
			break;

		aud_stat = MSP_AUDIO_SAMPLE_CONTINUE;
		if (0 == pcm_count)
			aud_stat = MSP_AUDIO_SAMPLE_FIRST;

		printf(">");
		ret = QISRAudioWrite(session_id, (const void *)&p_pcm[pcm_count], len, aud_stat, &ep_stat, &rec_stat);
		if (MSP_SUCCESS != ret)
		{
			printf("\nQISRAudioWrite failed! error code:%d\n", ret);
			goto iat_exit;
		}
			
		pcm_count += (long)len;
		pcm_size  -= (long)len;
		
		if (MSP_REC_STATUS_SUCCESS == rec_stat) //已经有部分听写结果
		{
			const char *rslt = QISRGetResult(session_id, &rec_stat, 0, &errcode);
			if (MSP_SUCCESS != errcode)
			{
				printf("\nQISRGetResult failed! error code: %d\n", errcode);
				goto iat_exit;
			}
			if (NULL != rslt)
			{
				unsigned int rslt_len = strlen(rslt);
				total_len += rslt_len;
				if (total_len >= BUFFER_SIZE)
				{
					printf("\nno enough buffer for rec_result !\n");
					goto iat_exit;
				}
				strncat(rec_result, rslt, rslt_len);
			}
		}

		if (MSP_EP_AFTER_SPEECH == ep_stat)
			break;
		usleep(200*1000); //模拟人说话时间间隙。200ms对应10帧的音频
	}
	errcode = QISRAudioWrite(session_id, NULL, 0, MSP_AUDIO_SAMPLE_LAST, &ep_stat, &rec_stat);
	if (MSP_SUCCESS != errcode)
	{
		printf("\nQISRAudioWrite failed! error code:%d \n", errcode);
		goto iat_exit;	
	}

	while (MSP_REC_STATUS_COMPLETE != rec_stat) 
	{
		const char *rslt = QISRGetResult(session_id, &rec_stat, 0, &errcode);
		if (MSP_SUCCESS != errcode)
		{
			printf("\nQISRGetResult failed, error code: %d\n", errcode);
			goto iat_exit;
		}
		if (NULL != rslt)
		{
			unsigned int rslt_len = strlen(rslt);
			total_len += rslt_len;
			if (total_len >= BUFFER_SIZE)
			{
				printf("\nno enough buffer for rec_result !\n");
				goto iat_exit;
			}
			strncat(rec_result, rslt, rslt_len);
		}
		usleep(150*1000); //防止频繁占用CPU
	}
	printf("\n语音听写结束\n");
	printf("=============================================================\n");
    //        ss << rec_result;
     //       order.data = ss.str();
            order.data = rec_result;
	printf("%s\n",rec_result);
	printf("=============================================================\n");

iat_exit:
	if (NULL != f_pcm)
	{
		fclose(f_pcm);
		f_pcm = NULL;
	}
	if (NULL != p_pcm)
	{	free(p_pcm);
		p_pcm = NULL;
	}

	QISRSessionEnd(session_id, hints);
}
/* wav音频头部格式 */
typedef struct _wave_pcm_hdr
{
    char            riff[4];                // = "RIFF"
    int             size_8;                 // = FileSize - 8
    char            wave[4];                // = "WAVE"
    char            fmt[4];                 // = "fmt "
    int             fmt_size;               // = 下一个结构体的大小 : 16

    short int       format_tag;             // = PCM : 1
    short int       channels;               // = 通道数 : 1
    int             samples_per_sec;        // = 采样率 : 8000 | 6000 | 11025 | 16000
    int             avg_bytes_per_sec;      // = 每秒字节数 : samples_per_sec * bits_per_sample / 8
    short int       block_align;            // = 每采样点字节数 : wBitsPerSample / 8
    short int       bits_per_sample;        // = 量化比特数: 8 | 16

    char            data[4];                // = "data";
    int             data_size;              // = 纯数据长度 : FileSize - 44
} wave_pcm_hdr;
/* 默认wav音频头部数据 */
wave_pcm_hdr default_wav_hdr =
{
    { 'R', 'I', 'F', 'F' },
    0,
    {'W', 'A', 'V', 'E'},
    {'f', 'm', 't', ' '},
    16,
    1,
    1,
    16000,
    32000,
    2,
    16,
    {'d', 'a', 't', 'a'},
    0
};
#define SAMPLE_RATE_16K     (16000)
#define SAMPLE_RATE_8K      (8000)
#define MAX_GRAMMARID_LEN   (32)
#define MAX_PARAMS_LEN      (1024)


int run_asr(void *udata); //进行离线语法识别

int recode_asr()
{
    const char *rec_rslt               = NULL;
    FILE *f_pcm                        = NULL;
    char *pcm_data                     = NULL;
    long pcm_count                     = 0;

    int aud_stat                       = MSP_AUDIO_SAMPLE_CONTINUE;
    int ep_status                      = MSP_EP_LOOKING_FOR_SPEECH;
    int rec_status                     = MSP_REC_STATUS_INCOMPLETE;
    int rss_status                     = MSP_REC_STATUS_INCOMPLETE;
    int errcode                        = -1;

    long loops;
    int rc, size;
    float time=5;
    snd_pcm_t *handle;
    snd_pcm_hw_params_t *params;
    snd_pcm_uframes_t frames, ret;
    char *buffer;
    char *ptr_buffer;
    FILE *fp = fopen("/home/ssj/Robot/voice/wav/listened.wav", "wb");

    //离线语法识别参数设置
    printf("开始捕获...\n");
    if(fp == NULL){  }else(printf("open file success"));
    rc = snd_pcm_open(&handle, DEVICE, SND_PCM_STREAM_CAPTURE, 0);
    if (rc < 0) {  } else  printf("OK:before alloca\n");
    snd_pcm_hw_params_alloca(&params);
    printf("OK:after alloca\n");
    rc = snd_pcm_hw_params_any(handle, params);
    if (rc < 0) {  }  else{    printf("OK:snd_pcm_hw_params_an()\n");  }
    rc = snd_pcm_hw_params_set_access(handle, params,SND_PCM_ACCESS_RW_INTERLEAVED);
    if (rc < 0) {  }  else{    printf("OK:snd_pcm_hw_params_set_access()\n");  }
    rc = snd_pcm_hw_params_set_format(handle, params, FORMAT);
    if (rc < 0) {  }  else{    printf("OK:snd_pcm_hw_params_set_format()\n");  }
    rc = snd_pcm_hw_params_set_channels(handle, params, CHANNLE);
    if (rc < 0) {  }  else{    printf("OK:snd_pcm_hw_params_set_channels()\n");  }
    rc = snd_pcm_hw_params_set_rate(handle, params,SAMPLE_RATE, 0);
    if (rc < 0) {  }  else{    printf("OK:snd_pcm_hw_params_set_rate()\n");  }
    frames = FRAMES_SIZE;
    rc = snd_pcm_hw_params(handle, params);
    if (rc < 0) {  }  else{    printf("OK:snd_pcm_hw_paraams()\n");  }
    size = frames * PER_SAMPLE *CHANNLE; /* 2 bytes/sample, 1 channels */
    ptr_buffer = buffer = (char *) malloc(size);
    if(buffer == NULL){  }else{    printf("OK:malloc()\n");  }
    loops = SAMPLE_RATE/frames*time;
    fwrite(&default_wav_hdr, sizeof(default_wav_hdr) ,1, fp);
    while (loops > 0)
    {
          loops--;
          ret = snd_pcm_readi(handle, ptr_buffer, frames);
          if (ret == -EPIPE) {
            printf( "overrun occurred\n");
            snd_pcm_prepare(handle);
          } else if (ret < 0)  printf("error from read: %s\n",snd_strerror(ret));
          //else if (ret != frames)    printf( "short read, read %d frames\n", ret);
          rc = fwrite(ptr_buffer, size, 1, fp);
          if (rc < 0){   printf("error in write\n");   }
          if (rc != 1)    printf("failed to write %d bytes\n",size);
          printf(">");
          fflush(stdout);
        if (0 == pcm_count) aud_stat = MSP_AUDIO_SAMPLE_FIRST;
        else   aud_stat = MSP_AUDIO_SAMPLE_CONTINUE;
        if (MSP_EP_AFTER_SPEECH == ep_status)break;     //检测到音频结束
    }

    if(buffer != NULL)  free(buffer);
    if(fp != NULL)  fclose(fp);
    snd_pcm_drain(handle);
    snd_pcm_close(handle);

    free(pcm_data);
    pcm_data = NULL;
    printf("\n捕获结束：\n");
    printf("=============================================================\n");
    printf("开始转换\n");
    flag_get = 1;

/*
    goto run_exit;

    if (NULL != pcm_data) {
        free(pcm_data);
        pcm_data = NULL;
    }
    if (NULL != f_pcm) {
        fclose(f_pcm);
        f_pcm = NULL;
    }
run_exit:
    printf("exit with code :%d..\n",errcode);
    return errcode;
    */
}
void wakeupcallback(const std_msgs::String::ConstPtr& msg)
{
    std::cout<<"waking up"<<std::endl;
   // printf("%s", *msg->data.c_str());
    usleep(700*1000);
    flag_begin=1;
}

int main(int argc,char **argv)
{
    int upload_on       =   1;
    int ret             =   0;
    const char* login_params    = "appid = 59afe284, work_dir = . ";
    const char* session_begin_params = "sub = iat, domain = iat, language = zh_cn, accent = mandarin, sample_rate = 16000 , result_type = plain, result_encoding = utf8";

	ret = MSPLogin(NULL, NULL, login_params); //第一个参数是用户名，第二个参数是密码，均传NULL即可，第三个参数是登录参数	
	if (MSP_SUCCESS != ret)
	{
		printf("MSPLogin failed , Error code %d.\n",ret);
	printf("按任意键退出 ...\n");
	getchar();
	MSPLogout(); //退出登录 
            return 0;
	}
	printf("是否上传用户词表？\n0:不使用\n1:使用\n");

	scanf("%d", &upload_on);
	if (upload_on)
	{
		printf("上传用户词表 ...\n");
		ret = upload_userwords();
		if (MSP_SUCCESS != ret)
        {

	printf("按任意键退出 ...\n");
	getchar();
	MSPLogout(); //退出登录 
            return 0;
        }
		printf("上传用户词表成功\n");
	}

    ros::init(argc, argv, "xf_asr");
    ros::NodeHandle n;
    ros::Rate loop_rate(10);
    ros::Subscriber sub = n.subscribe("xfwakeup", 1000, wakeupcallback);
    //ros::Publisher pub = n.advertise<std_msgs::String>("xfsaywords", 1000);
    //ros::Publisher pub = n.advertise<std_msgs::String>("/voice/xf_tts_topic", 1000);
    ros::Publisher pub = n.advertise<std_msgs::String>("/voice/tuling_arv_topic", 1000);
    ros::Publisher pub2= n.advertise<std_msgs::String>("xfunderstand",10000);
    printf("I'm ready to capture!\n");
    while (ros::ok())
    {
        if(flag_begin)
        {
            recode_asr();
         flag_begin=0;
        }
        if(flag_get)
        {
            flag_get = 0;       
        	run_iat("/home/ssj/Robot/voice/wav/listened.wav", session_begin_params); 
            pub.publish(order);
        }

     ros::spinOnce();
     loop_rate.sleep();
    }



	return 0;
}

