; Auto-generated. Do not edit!


(cl:in-package serial_comm-msg)


;//! \htmlinclude pan_data.msg.html

(cl:defclass <pan_data> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass pan_data (<pan_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pan_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pan_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_comm-msg:<pan_data> is deprecated: use serial_comm-msg:pan_data instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <pan_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_comm-msg:yaw-val is deprecated.  Use serial_comm-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <pan_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_comm-msg:pitch-val is deprecated.  Use serial_comm-msg:pitch instead.")
  (pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pan_data>) ostream)
  "Serializes a message object of type '<pan_data>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pan_data>) istream)
  "Deserializes a message object of type '<pan_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pan_data>)))
  "Returns string type for a message object of type '<pan_data>"
  "serial_comm/pan_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pan_data)))
  "Returns string type for a message object of type 'pan_data"
  "serial_comm/pan_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pan_data>)))
  "Returns md5sum for a message object of type '<pan_data>"
  "84eddaf18b6b9df47b605419a0572436")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pan_data)))
  "Returns md5sum for a message object of type 'pan_data"
  "84eddaf18b6b9df47b605419a0572436")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pan_data>)))
  "Returns full string definition for message of type '<pan_data>"
  (cl:format cl:nil "float64 yaw~%float64 pitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pan_data)))
  "Returns full string definition for message of type 'pan_data"
  (cl:format cl:nil "float64 yaw~%float64 pitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pan_data>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pan_data>))
  "Converts a ROS message object to a list"
  (cl:list 'pan_data
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitch (pitch msg))
))
