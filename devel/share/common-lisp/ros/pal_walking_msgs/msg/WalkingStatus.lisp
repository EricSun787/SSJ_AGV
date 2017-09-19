; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-msg)


;//! \htmlinclude WalkingStatus.msg.html

(cl:defclass <WalkingStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hip_reference_pose
    :reader hip_reference_pose
    :initarg :hip_reference_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (foot_reference_pose
    :reader foot_reference_pose
    :initarg :foot_reference_pose
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 2 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (zmp_reference
    :reader zmp_reference
    :initarg :zmp_reference
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass WalkingStatus (<WalkingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-msg:<WalkingStatus> is deprecated: use pal_walking_msgs-msg:WalkingStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WalkingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:header-val is deprecated.  Use pal_walking_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hip_reference_pose-val :lambda-list '(m))
(cl:defmethod hip_reference_pose-val ((m <WalkingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:hip_reference_pose-val is deprecated.  Use pal_walking_msgs-msg:hip_reference_pose instead.")
  (hip_reference_pose m))

(cl:ensure-generic-function 'foot_reference_pose-val :lambda-list '(m))
(cl:defmethod foot_reference_pose-val ((m <WalkingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:foot_reference_pose-val is deprecated.  Use pal_walking_msgs-msg:foot_reference_pose instead.")
  (foot_reference_pose m))

(cl:ensure-generic-function 'zmp_reference-val :lambda-list '(m))
(cl:defmethod zmp_reference-val ((m <WalkingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:zmp_reference-val is deprecated.  Use pal_walking_msgs-msg:zmp_reference instead.")
  (zmp_reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkingStatus>) ostream)
  "Serializes a message object of type '<WalkingStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hip_reference_pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'foot_reference_pose))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'zmp_reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkingStatus>) istream)
  "Deserializes a message object of type '<WalkingStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hip_reference_pose) istream)
  (cl:setf (cl:slot-value msg 'foot_reference_pose) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'foot_reference_pose)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'zmp_reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkingStatus>)))
  "Returns string type for a message object of type '<WalkingStatus>"
  "pal_walking_msgs/WalkingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkingStatus)))
  "Returns string type for a message object of type 'WalkingStatus"
  "pal_walking_msgs/WalkingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkingStatus>)))
  "Returns md5sum for a message object of type '<WalkingStatus>"
  "86de80b808fb27b3f11d218fa8d1c16e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkingStatus)))
  "Returns md5sum for a message object of type 'WalkingStatus"
  "86de80b808fb27b3f11d218fa8d1c16e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkingStatus>)))
  "Returns full string definition for message of type '<WalkingStatus>"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Pose    hip_reference_pose~%~%geometry_msgs/Pose[2] foot_reference_pose~%~%geometry_msgs/Point zmp_reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkingStatus)))
  "Returns full string definition for message of type 'WalkingStatus"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Pose    hip_reference_pose~%~%geometry_msgs/Pose[2] foot_reference_pose~%~%geometry_msgs/Point zmp_reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkingStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hip_reference_pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'foot_reference_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'zmp_reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkingStatus
    (cl:cons ':header (header msg))
    (cl:cons ':hip_reference_pose (hip_reference_pose msg))
    (cl:cons ':foot_reference_pose (foot_reference_pose msg))
    (cl:cons ':zmp_reference (zmp_reference msg))
))
