#ifndef PARAM_MANAGER_H
#define PARAM_MANAGER_H
#include "opencv2/opencv.hpp"
#include <vector>

namespace autocar
{
namespace param_mul
{
class param_manager
{
public:
  param_manager();
  virtual void read_params() = 0;
protected:
  cv::FileNode root;
};
}
}

#endif // PARAM_MANAGER_H
