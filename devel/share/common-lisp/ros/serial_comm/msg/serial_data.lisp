; Auto-generated. Do not edit!


(cl:in-package serial_comm-msg)


;//! \htmlinclude serial_data.msg.html

(cl:defclass <serial_data> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass serial_data (<serial_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_comm-msg:<serial_data> is deprecated: use serial_comm-msg:serial_data instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <serial_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_comm-msg:data-val is deprecated.  Use serial_comm-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_data>) ostream)
  "Serializes a message object of type '<serial_data>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_data>) istream)
  "Deserializes a message object of type '<serial_data>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_data>)))
  "Returns string type for a message object of type '<serial_data>"
  "serial_comm/serial_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_data)))
  "Returns string type for a message object of type 'serial_data"
  "serial_comm/serial_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_data>)))
  "Returns md5sum for a message object of type '<serial_data>"
  "79cd2e4a60f8fd7afcb0476d2ea77fdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_data)))
  "Returns md5sum for a message object of type 'serial_data"
  "79cd2e4a60f8fd7afcb0476d2ea77fdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_data>)))
  "Returns full string definition for message of type '<serial_data>"
  (cl:format cl:nil "int64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_data)))
  "Returns full string definition for message of type 'serial_data"
  (cl:format cl:nil "int64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_data>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_data>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_data
    (cl:cons ':data (data msg))
))
