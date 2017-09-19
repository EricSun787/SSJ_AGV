; Auto-generated. Do not edit!


(cl:in-package vision_unit-msg)


;//! \htmlinclude transformed_scan.msg.html

(cl:defclass <transformed_scan> (roslisp-msg-protocol:ros-message)
  ((dist
    :reader dist
    :initarg :dist
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass transformed_scan (<transformed_scan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <transformed_scan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'transformed_scan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_unit-msg:<transformed_scan> is deprecated: use vision_unit-msg:transformed_scan instead.")))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <transformed_scan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_unit-msg:dist-val is deprecated.  Use vision_unit-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <transformed_scan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_unit-msg:angle-val is deprecated.  Use vision_unit-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <transformed_scan>) ostream)
  "Serializes a message object of type '<transformed_scan>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dist))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <transformed_scan>) istream)
  "Deserializes a message object of type '<transformed_scan>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<transformed_scan>)))
  "Returns string type for a message object of type '<transformed_scan>"
  "vision_unit/transformed_scan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transformed_scan)))
  "Returns string type for a message object of type 'transformed_scan"
  "vision_unit/transformed_scan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<transformed_scan>)))
  "Returns md5sum for a message object of type '<transformed_scan>"
  "d04f633fb6d830034a14d1a39c7655c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'transformed_scan)))
  "Returns md5sum for a message object of type 'transformed_scan"
  "d04f633fb6d830034a14d1a39c7655c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<transformed_scan>)))
  "Returns full string definition for message of type '<transformed_scan>"
  (cl:format cl:nil "float32[] dist~%float32[] angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'transformed_scan)))
  "Returns full string definition for message of type 'transformed_scan"
  (cl:format cl:nil "float32[] dist~%float32[] angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <transformed_scan>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <transformed_scan>))
  "Converts a ROS message object to a list"
  (cl:list 'transformed_scan
    (cl:cons ':dist (dist msg))
    (cl:cons ':angle (angle msg))
))
