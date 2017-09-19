; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-srv)


;//! \htmlinclude WalkSteps-request.msg.html

(cl:defclass <WalkSteps-request> (roslisp-msg-protocol:ros-message)
  ((nsteps
    :reader nsteps
    :initarg :nsteps
    :type cl:integer
    :initform 0)
   (step_length
    :reader step_length
    :initarg :step_length
    :type cl:float
    :initform 0.0)
   (step_time
    :reader step_time
    :initarg :step_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass WalkSteps-request (<WalkSteps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkSteps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkSteps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<WalkSteps-request> is deprecated: use pal_walking_msgs-srv:WalkSteps-request instead.")))

(cl:ensure-generic-function 'nsteps-val :lambda-list '(m))
(cl:defmethod nsteps-val ((m <WalkSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:nsteps-val is deprecated.  Use pal_walking_msgs-srv:nsteps instead.")
  (nsteps m))

(cl:ensure-generic-function 'step_length-val :lambda-list '(m))
(cl:defmethod step_length-val ((m <WalkSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:step_length-val is deprecated.  Use pal_walking_msgs-srv:step_length instead.")
  (step_length m))

(cl:ensure-generic-function 'step_time-val :lambda-list '(m))
(cl:defmethod step_time-val ((m <WalkSteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:step_time-val is deprecated.  Use pal_walking_msgs-srv:step_time instead.")
  (step_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkSteps-request>) ostream)
  "Serializes a message object of type '<WalkSteps-request>"
  (cl:let* ((signed (cl:slot-value msg 'nsteps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkSteps-request>) istream)
  "Deserializes a message object of type '<WalkSteps-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nsteps) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkSteps-request>)))
  "Returns string type for a service object of type '<WalkSteps-request>"
  "pal_walking_msgs/WalkStepsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkSteps-request)))
  "Returns string type for a service object of type 'WalkSteps-request"
  "pal_walking_msgs/WalkStepsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkSteps-request>)))
  "Returns md5sum for a message object of type '<WalkSteps-request>"
  "58a83587aa65e3865f04c9ed9e7cdaaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkSteps-request)))
  "Returns md5sum for a message object of type 'WalkSteps-request"
  "58a83587aa65e3865f04c9ed9e7cdaaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkSteps-request>)))
  "Returns full string definition for message of type '<WalkSteps-request>"
  (cl:format cl:nil "~%~%~%int32     nsteps~%float64   step_length~%float64   step_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkSteps-request)))
  "Returns full string definition for message of type 'WalkSteps-request"
  (cl:format cl:nil "~%~%~%int32     nsteps~%float64   step_length~%float64   step_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkSteps-request>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkSteps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkSteps-request
    (cl:cons ':nsteps (nsteps msg))
    (cl:cons ':step_length (step_length msg))
    (cl:cons ':step_time (step_time msg))
))
;//! \htmlinclude WalkSteps-response.msg.html

(cl:defclass <WalkSteps-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WalkSteps-response (<WalkSteps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkSteps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkSteps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<WalkSteps-response> is deprecated: use pal_walking_msgs-srv:WalkSteps-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkSteps-response>) ostream)
  "Serializes a message object of type '<WalkSteps-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkSteps-response>) istream)
  "Deserializes a message object of type '<WalkSteps-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkSteps-response>)))
  "Returns string type for a service object of type '<WalkSteps-response>"
  "pal_walking_msgs/WalkStepsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkSteps-response)))
  "Returns string type for a service object of type 'WalkSteps-response"
  "pal_walking_msgs/WalkStepsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkSteps-response>)))
  "Returns md5sum for a message object of type '<WalkSteps-response>"
  "58a83587aa65e3865f04c9ed9e7cdaaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkSteps-response)))
  "Returns md5sum for a message object of type 'WalkSteps-response"
  "58a83587aa65e3865f04c9ed9e7cdaaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkSteps-response>)))
  "Returns full string definition for message of type '<WalkSteps-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkSteps-response)))
  "Returns full string definition for message of type 'WalkSteps-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkSteps-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkSteps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkSteps-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WalkSteps)))
  'WalkSteps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WalkSteps)))
  'WalkSteps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkSteps)))
  "Returns string type for a service object of type '<WalkSteps>"
  "pal_walking_msgs/WalkSteps")