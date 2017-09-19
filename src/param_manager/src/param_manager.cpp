#include "param_manager.h"

namespace autocar
{
namespace param_mul
{
param_manager::param_manager()
{
  cv::FileStorage fs("/home/ubuntu/dji_beta/auto_car/src/param_manager/autocar_params.xml", 0);
  if(!fs.isOpened())
  {
    std::cout << "Cannot open aruocar_params.xml, please check if the file is exist." << std::endl;
  }
  root = fs["opencv_storage"];
}
}
}
