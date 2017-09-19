; Auto-generated. Do not edit!


(cl:in-package pal_wifi_localization_msgs-srv)


;//! \htmlinclude GetWifiMap-request.msg.html

(cl:defclass <GetWifiMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWifiMap-request (<GetWifiMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWifiMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWifiMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_wifi_localization_msgs-srv:<GetWifiMap-request> is deprecated: use pal_wifi_localization_msgs-srv:GetWifiMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWifiMap-request>) ostream)
  "Serializes a message object of type '<GetWifiMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWifiMap-request>) istream)
  "Deserializes a message object of type '<GetWifiMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWifiMap-request>)))
  "Returns string type for a service object of type '<GetWifiMap-request>"
  "pal_wifi_localization_msgs/GetWifiMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWifiMap-request)))
  "Returns string type for a service object of type 'GetWifiMap-request"
  "pal_wifi_localization_msgs/GetWifiMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWifiMap-request>)))
  "Returns md5sum for a message object of type '<GetWifiMap-request>"
  "4273c0e2a4f41c0c71c07a4fee60fcee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWifiMap-request)))
  "Returns md5sum for a message object of type 'GetWifiMap-request"
  "4273c0e2a4f41c0c71c07a4fee60fcee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWifiMap-request>)))
  "Returns full string definition for message of type '<GetWifiMap-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWifiMap-request)))
  "Returns full string definition for message of type 'GetWifiMap-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWifiMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWifiMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWifiMap-request
))
;//! \htmlinclude GetWifiMap-response.msg.html

(cl:defclass <GetWifiMap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type pal_wifi_localization_msgs-msg:WifiSignalMap
    :initform (cl:make-instance 'pal_wifi_localization_msgs-msg:WifiSignalMap)))
)

(cl:defclass GetWifiMap-response (<GetWifiMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWifiMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWifiMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_wifi_localization_msgs-srv:<GetWifiMap-response> is deprecated: use pal_wifi_localization_msgs-srv:GetWifiMap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetWifiMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-srv:map-val is deprecated.  Use pal_wifi_localization_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWifiMap-response>) ostream)
  "Serializes a message object of type '<GetWifiMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWifiMap-response>) istream)
  "Deserializes a message object of type '<GetWifiMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWifiMap-response>)))
  "Returns string type for a service object of type '<GetWifiMap-response>"
  "pal_wifi_localization_msgs/GetWifiMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWifiMap-response)))
  "Returns string type for a service object of type 'GetWifiMap-response"
  "pal_wifi_localization_msgs/GetWifiMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWifiMap-response>)))
  "Returns md5sum for a message object of type '<GetWifiMap-response>"
  "4273c0e2a4f41c0c71c07a4fee60fcee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWifiMap-response)))
  "Returns md5sum for a message object of type 'GetWifiMap-response"
  "4273c0e2a4f41c0c71c07a4fee60fcee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWifiMap-response>)))
  "Returns full string definition for message of type '<GetWifiMap-response>"
  (cl:format cl:nil "pal_wifi_localization_msgs/WifiSignalMap map~%~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignalMap~%# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# Define the number of sectors to be used on wifi maps that include orientation info.~%uint32 sectors~%~%# The map data, in row-major order, starting with (0,0).  Wifi signal strenght models~%# are gaussian probability distribution functions defined by mean and standard deviation value.~%WifiSignalList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignalList~%#list of wifi signal models learnt in a specific place~%~%WifiSignal[] networks~%~%time start_time~%time end_time~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignal~%## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWifiMap-response)))
  "Returns full string definition for message of type 'GetWifiMap-response"
  (cl:format cl:nil "pal_wifi_localization_msgs/WifiSignalMap map~%~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignalMap~%# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# Define the number of sectors to be used on wifi maps that include orientation info.~%uint32 sectors~%~%# The map data, in row-major order, starting with (0,0).  Wifi signal strenght models~%# are gaussian probability distribution functions defined by mean and standard deviation value.~%WifiSignalList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignalList~%#list of wifi signal models learnt in a specific place~%~%WifiSignal[] networks~%~%time start_time~%time end_time~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignal~%## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWifiMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWifiMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWifiMap-response
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWifiMap)))
  'GetWifiMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWifiMap)))
  'GetWifiMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWifiMap)))
  "Returns string type for a service object of type '<GetWifiMap>"
  "pal_wifi_localization_msgs/GetWifiMap")