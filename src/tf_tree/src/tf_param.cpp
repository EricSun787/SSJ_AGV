#include "tf_param.h"

namespace autocar
{
namespace tf_mul
{
tf_param::tf_param()
{
  read_params();
}

void tf_param::read_params()
{
  //tf_mul
  cv::FileNode tf_mul = root["tf_mul"];
  tf_mul["transform"] >> T;
  tf_mul["rotate"] >> R;
  std::cout << T.size() << std::endl << T << std::endl;
}

cv::Mat tf_param::get_rotate_matrix()
{
  return R;
}

cv::Mat tf_param::get_transf_matrix()
{
  return T;
}
}
}
