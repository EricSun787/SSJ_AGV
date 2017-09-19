#include "serial_param.h"
namespace autocar
{
namespace serial_mul
{

serial_param::serial_param()
{
  read_params();
}

void serial_param::read_params()
{
  //serial_mul
  cv::FileNode serial_mul = root["serial_mul"];
  serial_port = (std::string)serial_mul["serial_port"];
  serial_baudrate = (int)serial_mul["serial_baudrate"];
}
}
}
