#ifndef TF_PARAM_H
#define TF_PARAM_H
#include <opencv2/opencv.hpp>

namespace autocar
{
namespace tf_mul
{
class tf_param
{
public:
  tf_param();
  /**
   * @brief Read the tf related parameters.
   */
  void read_params();
  cv::Mat get_transf_matrix();
  cv::Mat get_rotate_matrix();
private:
  //tf_mul
  cv::Mat T;
  cv::Mat R;
};
}
}

#endif // TF_PARAM_H
