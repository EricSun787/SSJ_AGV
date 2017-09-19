; Auto-generated. Do not edit!


(cl:in-package pal_wifi_localization_msgs-msg)


;//! \htmlinclude WifiSignalMap.msg.html

(cl:defclass <WifiSignalMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData))
   (sectors
    :reader sectors
    :initarg :sectors
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector pal_wifi_localization_msgs-msg:WifiSignalList)
   :initform (cl:make-array 0 :element-type 'pal_wifi_localization_msgs-msg:WifiSignalList :initial-element (cl:make-instance 'pal_wifi_localization_msgs-msg:WifiSignalList))))
)

(cl:defclass WifiSignalMap (<WifiSignalMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiSignalMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiSignalMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_wifi_localization_msgs-msg:<WifiSignalMap> is deprecated: use pal_wifi_localization_msgs-msg:WifiSignalMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WifiSignalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:header-val is deprecated.  Use pal_wifi_localization_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <WifiSignalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:info-val is deprecated.  Use pal_wifi_localization_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'sectors-val :lambda-list '(m))
(cl:defmethod sectors-val ((m <WifiSignalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:sectors-val is deprecated.  Use pal_wifi_localization_msgs-msg:sectors instead.")
  (sectors m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WifiSignalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:data-val is deprecated.  Use pal_wifi_localization_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiSignalMap>) ostream)
  "Serializes a message object of type '<WifiSignalMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sectors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sectors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sectors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sectors)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiSignalMap>) istream)
  "Deserializes a message object of type '<WifiSignalMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sectors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sectors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sectors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sectors)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_wifi_localization_msgs-msg:WifiSignalList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiSignalMap>)))
  "Returns string type for a message object of type '<WifiSignalMap>"
  "pal_wifi_localization_msgs/WifiSignalMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiSignalMap)))
  "Returns string type for a message object of type 'WifiSignalMap"
  "pal_wifi_localization_msgs/WifiSignalMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiSignalMap>)))
  "Returns md5sum for a message object of type '<WifiSignalMap>"
  "5083f884f6a479bea709736f39c4131f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiSignalMap)))
  "Returns md5sum for a message object of type 'WifiSignalMap"
  "5083f884f6a479bea709736f39c4131f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiSignalMap>)))
  "Returns full string definition for message of type '<WifiSignalMap>"
  (cl:format cl:nil "# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# Define the number of sectors to be used on wifi maps that include orientation info.~%uint32 sectors~%~%# The map data, in row-major order, starting with (0,0).  Wifi signal strenght models~%# are gaussian probability distribution functions defined by mean and standard deviation value.~%WifiSignalList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignalList~%#list of wifi signal models learnt in a specific place~%~%WifiSignal[] networks~%~%time start_time~%time end_time~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignal~%## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiSignalMap)))
  "Returns full string definition for message of type 'WifiSignalMap"
  (cl:format cl:nil "# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# Define the number of sectors to be used on wifi maps that include orientation info.~%uint32 sectors~%~%# The map data, in row-major order, starting with (0,0).  Wifi signal strenght models~%# are gaussian probability distribution functions defined by mean and standard deviation value.~%WifiSignalList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignalList~%#list of wifi signal models learnt in a specific place~%~%WifiSignal[] networks~%~%time start_time~%time end_time~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignal~%## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiSignalMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiSignalMap>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiSignalMap
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
    (cl:cons ':sectors (sectors msg))
    (cl:cons ':data (data msg))
))
