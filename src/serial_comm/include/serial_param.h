#ifndef SERIAL_PARAM_H
#define SERIAL_PARAM_H
#include "/home/dji/dji_beta/auto_car/src/param_manager/include/param_manager.h"
namespace autocar
{
namespace serial_mul
{
class serial_param: public autocar::param_mul::param_manager
{
public:
  /**
   * @brief Constructor
   */
  serial_param();
  /**
   * @brief Read the tf related parameters.
   */
  void read_params();
public:
  std::string serial_port;
  int serial_baudrate;
};
}
}


#endif // SERIAL_PARAM_H
