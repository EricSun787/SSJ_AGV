#include "comm_read.h"

namespace autocar
{
namespace serial_mul
{

comm_read::comm_read()
{
  //std::string serial_port;
  data_len = sizeof(data_t);
  dev = "/dev/ttyTHS2";
  serial_baudrate = B115200;
}

bool comm_read::read_setup()
{
  fd = open (dev.c_str(), O_RDWR);
  if(fd==-1)
  {
    //perror("error!");
    return false;
  }
  struct termios oldtio;
  tcgetattr(fd,&oldtio);
  if(tcgetattr(fd,&oldtio)!=0)
  {
    //perror("error!");
    return false;
  }
  struct termios newtio;
  newtio.c_cflag=CIBAUD|CRTSCTS|CS8|CLOCAL|CREAD;
  cfsetispeed(&newtio,serial_baudrate);
  cfsetospeed(&newtio,serial_baudrate);
  newtio.c_iflag=IGNPAR;
  newtio.c_oflag=0;
  newtio.c_lflag=0;
  newtio.c_cc[VMIN]=1;
  newtio.c_cc[VTIME]=0;
  tcflush(fd,TCIFLUSH);
  tcsetattr(fd,TCSANOW,&newtio);
  return true;
}

void comm_read::read_init()
{
  uint8_t buff[data_len];
  memset(buff, 0, data_len);
  read(fd, buff, sizeof(data_t));
  memcpy(&data, buff, sizeof(data_t));
  if(data.sof==0xA5 && data.end == 0xfe)
    init_yaw = data.angle;
}

void comm_read::read_data()
{
  uint8_t buff[data_len];
  memset(buff, 0, data_len);
  read(fd,buff,sizeof(data_t));
  memcpy(&data, buff, sizeof(data_t));
  if(data.sof==0xA5 && data.end == 0xfe)
  {
    Y             = data.angle - init_yaw;
    YawAngle      = Y*(M_PI/180.);

    ForeBack      = data.v_x;
    LeftRight     = data.v_y;

    R             = data.v_w;
    Rotate        = R*(M_PI/180.);
    pubData.angle = YawAngle;
    pubData.v_x   = ForeBack/1000.;
    pubData.v_y   = LeftRight/1000.;
    pubData.v_r   = Rotate;
    pubData.yaw   = -data.pan_title_yaw*(M_PI/180);
  }
}

comm_read::~comm_read()
{
  close(fd);
}

}//namespace serial_comm
}//namespace autocar
