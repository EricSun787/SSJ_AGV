#ifndef TF_FACTORY_H
#define TF_FACTORY_H
#include<ros/ros.h>
#include<tf/transform_broadcaster.h>
#include <opencv2/opencv.hpp>

namespace autocar
{
namespace tf_mul
{
class tf_factory
{
public:
  tf_factory();
  /**
   * @brief Create a new coordinate transformation.
   */
  void create_tf();
  tf::Quaternion get_rotate();
  tf::Vector3 get_transf();
private:
  //> Rotate parameters
  tf::Quaternion *quaternion;
  //> Translation parameters
  tf::Vector3 *trans;
  cv::Mat T;
  cv::Mat R;
};
}
}

#endif // TF_FACTORY_H
