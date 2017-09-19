; Auto-generated. Do not edit!


(cl:in-package pal_web_msgs-msg)


;//! \htmlinclude WebGoTo.msg.html

(cl:defclass <WebGoTo> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass WebGoTo (<WebGoTo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WebGoTo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WebGoTo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_web_msgs-msg:<WebGoTo> is deprecated: use pal_web_msgs-msg:WebGoTo instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <WebGoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:type-val is deprecated.  Use pal_web_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WebGoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:value-val is deprecated.  Use pal_web_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WebGoTo>)))
    "Constants for message type '<WebGoTo>"
  '((:IMAGE . 0)
    (:VIDEO . 1)
    (:URI . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WebGoTo)))
    "Constants for message type 'WebGoTo"
  '((:IMAGE . 0)
    (:VIDEO . 1)
    (:URI . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WebGoTo>) ostream)
  "Serializes a message object of type '<WebGoTo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WebGoTo>) istream)
  "Deserializes a message object of type '<WebGoTo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WebGoTo>)))
  "Returns string type for a message object of type '<WebGoTo>"
  "pal_web_msgs/WebGoTo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WebGoTo)))
  "Returns string type for a message object of type 'WebGoTo"
  "pal_web_msgs/WebGoTo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WebGoTo>)))
  "Returns md5sum for a message object of type '<WebGoTo>"
  "715dcaa6e10d734c32f0941dc6231986")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WebGoTo)))
  "Returns md5sum for a message object of type 'WebGoTo"
  "715dcaa6e10d734c32f0941dc6231986")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WebGoTo>)))
  "Returns full string definition for message of type '<WebGoTo>"
  (cl:format cl:nil "uint8 IMAGE = 0~%uint8 VIDEO = 1~%uint8 URI   = 2~%uint8 type # one of the enum above~%~%string value # Destination (an image, a video or a uri)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WebGoTo)))
  "Returns full string definition for message of type 'WebGoTo"
  (cl:format cl:nil "uint8 IMAGE = 0~%uint8 VIDEO = 1~%uint8 URI   = 2~%uint8 type # one of the enum above~%~%string value # Destination (an image, a video or a uri)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WebGoTo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WebGoTo>))
  "Converts a ROS message object to a list"
  (cl:list 'WebGoTo
    (cl:cons ':type (type msg))
    (cl:cons ':value (value msg))
))
