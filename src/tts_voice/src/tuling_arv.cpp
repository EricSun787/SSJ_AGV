/*************************************************************************
	> File Name: tuling_arv.cpp
	> Author: Sunshengjin
	> Mail: 1012116832@qq.com
	> Created Time: 2017年09月06日 星期三 22时02分20秒
 ************************************************************************/


 

/*
 *  tuling_arv.cpp
 *  tuling_arv_node
*/

#include<ros/ros.h>
#include<std_msgs/String.h>
#include<iostream>
#include<sstream>
#include<jsoncpp/json/json.h>
#include<curl/curl.h>
#include<string>
#include<exception>

using namespace std;

int flag = 0;
string result;

 int writer(char *data, size_t size, size_t nmemb, string *writerData)
{
    unsigned long sizes = size * nmemb;
    if (writerData == NULL)
        return -1;

    writerData->append(data, sizes);

    return sizes;
}

/*
*   解析图灵服务器返回的Json string
*/
int parseJsonResonse(string input)
{
   Json::Value root;
   Json::Reader reader;
   bool parsingSuccessful = reader.parse(input, root);
   if(!parsingSuccessful)
   {
       std::cout<<"!!! Failed to parse the response data"<< std::endl;
        return -1;
   }
   const Json::Value code = root["code"];
   const Json::Value text = root["text"];
   result = text.asString();
   flag = 1;

   std::cout<< "response code:" << code << std::endl;
   std::cout<< "response text:" << result << std::endl;

   return 0;
}

/*
*   将input字腹发送到图灵服务器接受json string
*/
int HttpPostRequest(string input)
{
    string buffer;
   Json::Value put;
   Json::Reader r;
    //std::string strJson = "{";
    //std::string strJson = "?";
    //strJson += "\"key\" : \"d0b066c1ebc74accb3af38b8d477dfb4\","; //双引号前加／防转仪
   // strJson += "?key=d0b066c1ebc74accb3af38b8d477dfb4"; 
    //双引号前加／防转仪
    //strJson += "&info=";
    //strJson += input;
    //strJson["key"]=Json::Value("d0b066c1ebc74accb3af38b8d477dfb4");
    //strJson += "\"";
    //strJson += "}";
     
    std::string strJson = "{";
   // std::string strJson;
    //strJson += " \"key\" : \"0e30340484704c6594b6c74c3a49e2de\" ,"; //双引号前加／防转仪 
    strJson += " \"key\" : \"739130ca97a349fdb74c233b5cdb4122\" ,"; //双引号前加／防转仪 
    strJson += "\"info\":";
    strJson += "\"";
    strJson += input;
    strJson += "\"";
    strJson += ",";
    strJson += "\"loc\":\"山东省烟台市\",";
    
    strJson += "\"userid\":\"1012116832\""; //双引号前加／防转仪
    //strJson += "d0b066c1ebc74accb3af38b8d477dfb4:\"key\" ";
    //strJson += "\"secret\":9bcb366347c4587a";
    //strJson += "9bcb366347c4587a:\"secret\"";

    strJson += "}";
    std::cout<<"post json string: "<<strJson<<std::endl; 


     try
    {
        CURL *pCurl = NULL;
        CURLcode res;
        // In windows, this will init the winsock stuff
        curl_global_init(CURL_GLOBAL_ALL);

        // get a curl handle
        pCurl = curl_easy_init();
        if (NULL != pCurl)
        {
            // 设置超时时间为10秒
            curl_easy_setopt(pCurl, CURLOPT_TIMEOUT, 10);

            // First set the URL that is about to receive our POST.
            // This URL can just as well be a
            // https:// URL if that is what should receive the data.
            curl_easy_setopt(pCurl, CURLOPT_URL, "http://www.tuling123.com/openapi/api");
            //curl_easy_setopt(pCurl, CURLOPT_URL, "http://192.168.0.2/posttest.cgi");

            // 设置http发送的内容类型为JSON
            curl_slist *plist = curl_slist_append(NULL,
                "Content-Type:application/json;charset=UTF-8");
            curl_easy_setopt(pCurl, CURLOPT_HTTPHEADER, plist);

            // 设置要POST的JSON数据
            curl_easy_setopt(pCurl, CURLOPT_POSTFIELDS, strJson.c_str());


            curl_easy_setopt(pCurl, CURLOPT_WRITEFUNCTION, writer);

            curl_easy_setopt(pCurl, CURLOPT_WRITEDATA, &buffer);

            // Perform the request, res will get the return code
            res = curl_easy_perform(pCurl);
            // Check for errors
            if (res != CURLE_OK)
            {
                printf("curl_easy_perform() failed:%s\n", curl_easy_strerror(res));
            }
            // always cleanup
            curl_easy_cleanup(pCurl);
        }
        curl_global_cleanup();
    }
    catch (std::exception &ex)
    {
        printf("curl exception %s.\n", ex.what());
    }
    if(buffer.empty())
    {
      std::cout<< "!!! ERROR The Tuling sever response NULL" << std::endl;
    }
    else
    {
        parseJsonResonse(buffer);
    }

    return 0;

}

/*
*   当voice/tuling_arv_topic话题有消息时，调用HttpPostRequest向图灵服务器发送内容，返回结果。
*/
void arvCallBack(const std_msgs::String::ConstPtr &msg)
{
    std::cout<<"your quesion is: " << msg->data << std::endl;
    HttpPostRequest(msg->data);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv,"tuling_arv_node");
    ros::NodeHandle nd;

    ros::Subscriber sub = nd.subscribe("voice/tuling_arv_topic", 10, arvCallBack);
    ros::Publisher pub = nd.advertise<std_msgs::String>("/voice/xf_tts_topic", 10);
    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        if(flag)
        {
            std_msgs::String msg;
            msg.data = result;
            pub.publish(msg);
            flag = 0;
        }
        ros::spinOnce();
        loop_rate.sleep();
    }


}


