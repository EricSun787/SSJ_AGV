; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-msg)


;//! \htmlinclude WalkingStep.msg.html

(cl:defclass <WalkingStep> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (step_target
    :reader step_target
    :initarg :step_target
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget))
   (step_duration
    :reader step_duration
    :initarg :step_duration
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (step_list_size
    :reader step_list_size
    :initarg :step_list_size
    :type cl:integer
    :initform 0))
)

(cl:defclass WalkingStep (<WalkingStep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkingStep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkingStep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-msg:<WalkingStep> is deprecated: use pal_walking_msgs-msg:WalkingStep instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WalkingStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:header-val is deprecated.  Use pal_walking_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'step_target-val :lambda-list '(m))
(cl:defmethod step_target-val ((m <WalkingStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:step_target-val is deprecated.  Use pal_walking_msgs-msg:step_target instead.")
  (step_target m))

(cl:ensure-generic-function 'step_duration-val :lambda-list '(m))
(cl:defmethod step_duration-val ((m <WalkingStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:step_duration-val is deprecated.  Use pal_walking_msgs-msg:step_duration instead.")
  (step_duration m))

(cl:ensure-generic-function 'step_list_size-val :lambda-list '(m))
(cl:defmethod step_list_size-val ((m <WalkingStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:step_list_size-val is deprecated.  Use pal_walking_msgs-msg:step_list_size instead.")
  (step_list_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkingStep>) ostream)
  "Serializes a message object of type '<WalkingStep>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step_target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step_duration) ostream)
  (cl:let* ((signed (cl:slot-value msg 'step_list_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkingStep>) istream)
  "Deserializes a message object of type '<WalkingStep>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step_target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step_duration) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step_list_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkingStep>)))
  "Returns string type for a message object of type '<WalkingStep>"
  "pal_walking_msgs/WalkingStep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkingStep)))
  "Returns string type for a message object of type 'WalkingStep"
  "pal_walking_msgs/WalkingStep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkingStep>)))
  "Returns md5sum for a message object of type '<WalkingStep>"
  "71c9b6abe3794dbf1d1e8705aadecb82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkingStep)))
  "Returns md5sum for a message object of type 'WalkingStep"
  "71c9b6abe3794dbf1d1e8705aadecb82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkingStep>)))
  "Returns full string definition for message of type '<WalkingStep>"
  (cl:format cl:nil "# Data about walking step being executed~%~%Header header~%~%humanoid_nav_msgs/StepTarget step_target~%~%std_msgs/Duration           step_duration~%~%int32  step_list_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkingStep)))
  "Returns full string definition for message of type 'WalkingStep"
  (cl:format cl:nil "# Data about walking step being executed~%~%Header header~%~%humanoid_nav_msgs/StepTarget step_target~%~%std_msgs/Duration           step_duration~%~%int32  step_list_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkingStep>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step_duration))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkingStep>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkingStep
    (cl:cons ':header (header msg))
    (cl:cons ':step_target (step_target msg))
    (cl:cons ':step_duration (step_duration msg))
    (cl:cons ':step_list_size (step_list_size msg))
))
