; Auto-generated. Do not edit!


(cl:in-package pal_wifi_localization_msgs-msg)


;//! \htmlinclude WifiSignal.msg.html

(cl:defclass <WifiSignal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (mean
    :reader mean
    :initarg :mean
    :type cl:float
    :initform 0.0)
   (std_dev
    :reader std_dev
    :initarg :std_dev
    :type cl:float
    :initform 0.0))
)

(cl:defclass WifiSignal (<WifiSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_wifi_localization_msgs-msg:<WifiSignal> is deprecated: use pal_wifi_localization_msgs-msg:WifiSignal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WifiSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:id-val is deprecated.  Use pal_wifi_localization_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'mean-val :lambda-list '(m))
(cl:defmethod mean-val ((m <WifiSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:mean-val is deprecated.  Use pal_wifi_localization_msgs-msg:mean instead.")
  (mean m))

(cl:ensure-generic-function 'std_dev-val :lambda-list '(m))
(cl:defmethod std_dev-val ((m <WifiSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:std_dev-val is deprecated.  Use pal_wifi_localization_msgs-msg:std_dev instead.")
  (std_dev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiSignal>) ostream)
  "Serializes a message object of type '<WifiSignal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiSignal>) istream)
  "Deserializes a message object of type '<WifiSignal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiSignal>)))
  "Returns string type for a message object of type '<WifiSignal>"
  "pal_wifi_localization_msgs/WifiSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiSignal)))
  "Returns string type for a message object of type 'WifiSignal"
  "pal_wifi_localization_msgs/WifiSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiSignal>)))
  "Returns md5sum for a message object of type '<WifiSignal>"
  "d6a79c360f114b44aaa8b522b2621591")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiSignal)))
  "Returns md5sum for a message object of type 'WifiSignal"
  "d6a79c360f114b44aaa8b522b2621591")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiSignal>)))
  "Returns full string definition for message of type '<WifiSignal>"
  (cl:format cl:nil "## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiSignal)))
  "Returns full string definition for message of type 'WifiSignal"
  (cl:format cl:nil "## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiSignal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiSignal
    (cl:cons ':id (id msg))
    (cl:cons ':mean (mean msg))
    (cl:cons ':std_dev (std_dev msg))
))
