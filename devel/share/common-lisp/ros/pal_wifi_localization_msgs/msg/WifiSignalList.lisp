; Auto-generated. Do not edit!


(cl:in-package pal_wifi_localization_msgs-msg)


;//! \htmlinclude WifiSignalList.msg.html

(cl:defclass <WifiSignalList> (roslisp-msg-protocol:ros-message)
  ((networks
    :reader networks
    :initarg :networks
    :type (cl:vector pal_wifi_localization_msgs-msg:WifiSignal)
   :initform (cl:make-array 0 :element-type 'pal_wifi_localization_msgs-msg:WifiSignal :initial-element (cl:make-instance 'pal_wifi_localization_msgs-msg:WifiSignal)))
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:real
    :initform 0)
   (end_time
    :reader end_time
    :initarg :end_time
    :type cl:real
    :initform 0))
)

(cl:defclass WifiSignalList (<WifiSignalList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiSignalList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiSignalList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_wifi_localization_msgs-msg:<WifiSignalList> is deprecated: use pal_wifi_localization_msgs-msg:WifiSignalList instead.")))

(cl:ensure-generic-function 'networks-val :lambda-list '(m))
(cl:defmethod networks-val ((m <WifiSignalList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:networks-val is deprecated.  Use pal_wifi_localization_msgs-msg:networks instead.")
  (networks m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <WifiSignalList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:start_time-val is deprecated.  Use pal_wifi_localization_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'end_time-val :lambda-list '(m))
(cl:defmethod end_time-val ((m <WifiSignalList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_wifi_localization_msgs-msg:end_time-val is deprecated.  Use pal_wifi_localization_msgs-msg:end_time instead.")
  (end_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiSignalList>) ostream)
  "Serializes a message object of type '<WifiSignalList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'networks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'networks))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start_time) (cl:floor (cl:slot-value msg 'start_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end_time) (cl:floor (cl:slot-value msg 'end_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiSignalList>) istream)
  "Deserializes a message object of type '<WifiSignalList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'networks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'networks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_wifi_localization_msgs-msg:WifiSignal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiSignalList>)))
  "Returns string type for a message object of type '<WifiSignalList>"
  "pal_wifi_localization_msgs/WifiSignalList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiSignalList)))
  "Returns string type for a message object of type 'WifiSignalList"
  "pal_wifi_localization_msgs/WifiSignalList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiSignalList>)))
  "Returns md5sum for a message object of type '<WifiSignalList>"
  "7e7cf55cfdfea3ed97058d9184eceb4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiSignalList)))
  "Returns md5sum for a message object of type 'WifiSignalList"
  "7e7cf55cfdfea3ed97058d9184eceb4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiSignalList>)))
  "Returns full string definition for message of type '<WifiSignalList>"
  (cl:format cl:nil "#list of wifi signal models learnt in a specific place~%~%WifiSignal[] networks~%~%time start_time~%time end_time~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignal~%## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiSignalList)))
  "Returns full string definition for message of type 'WifiSignalList"
  (cl:format cl:nil "#list of wifi signal models learnt in a specific place~%~%WifiSignal[] networks~%~%time start_time~%time end_time~%~%================================================================================~%MSG: pal_wifi_localization_msgs/WifiSignal~%## Contains data relative to the learnt model of a wifi signal strenght in a specific location~%~%# network id~%std_msgs/String id~%~%#Signal is represented through  a gaussian pdf.~%#The signal strenght is measured in dB~%~%float32  mean~%float32  std_dev~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiSignalList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'networks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiSignalList>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiSignalList
    (cl:cons ':networks (networks msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':end_time (end_time msg))
))
