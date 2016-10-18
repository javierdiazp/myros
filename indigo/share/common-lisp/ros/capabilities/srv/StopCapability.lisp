; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude StopCapability-request.msg.html

(cl:defclass <StopCapability-request> (roslisp-msg-protocol:ros-message)
  ((capability
    :reader capability
    :initarg :capability
    :type cl:string
    :initform ""))
)

(cl:defclass StopCapability-request (<StopCapability-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopCapability-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopCapability-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<StopCapability-request> is deprecated: use capabilities-srv:StopCapability-request instead.")))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <StopCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability-val is deprecated.  Use capabilities-srv:capability instead.")
  (capability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopCapability-request>) ostream)
  "Serializes a message object of type '<StopCapability-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'capability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'capability))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopCapability-request>) istream)
  "Deserializes a message object of type '<StopCapability-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capability) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'capability) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopCapability-request>)))
  "Returns string type for a service object of type '<StopCapability-request>"
  "capabilities/StopCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopCapability-request)))
  "Returns string type for a service object of type 'StopCapability-request"
  "capabilities/StopCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopCapability-request>)))
  "Returns md5sum for a message object of type '<StopCapability-request>"
  "a38f2dfa23de9298b61bf01d2624e1cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopCapability-request)))
  "Returns md5sum for a message object of type 'StopCapability-request"
  "a38f2dfa23de9298b61bf01d2624e1cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopCapability-request>)))
  "Returns full string definition for message of type '<StopCapability-request>"
  (cl:format cl:nil "string capability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopCapability-request)))
  "Returns full string definition for message of type 'StopCapability-request"
  (cl:format cl:nil "string capability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopCapability-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capability))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopCapability-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopCapability-request
    (cl:cons ':capability (capability msg))
))
;//! \htmlinclude StopCapability-response.msg.html

(cl:defclass <StopCapability-response> (roslisp-msg-protocol:ros-message)
  ((successful
    :reader successful
    :initarg :successful
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopCapability-response (<StopCapability-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopCapability-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopCapability-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<StopCapability-response> is deprecated: use capabilities-srv:StopCapability-response instead.")))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <StopCapability-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:successful-val is deprecated.  Use capabilities-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopCapability-response>) ostream)
  "Serializes a message object of type '<StopCapability-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'successful) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopCapability-response>) istream)
  "Deserializes a message object of type '<StopCapability-response>"
    (cl:setf (cl:slot-value msg 'successful) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopCapability-response>)))
  "Returns string type for a service object of type '<StopCapability-response>"
  "capabilities/StopCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopCapability-response)))
  "Returns string type for a service object of type 'StopCapability-response"
  "capabilities/StopCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopCapability-response>)))
  "Returns md5sum for a message object of type '<StopCapability-response>"
  "a38f2dfa23de9298b61bf01d2624e1cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopCapability-response)))
  "Returns md5sum for a message object of type 'StopCapability-response"
  "a38f2dfa23de9298b61bf01d2624e1cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopCapability-response>)))
  "Returns full string definition for message of type '<StopCapability-response>"
  (cl:format cl:nil "bool successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopCapability-response)))
  "Returns full string definition for message of type 'StopCapability-response"
  (cl:format cl:nil "bool successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopCapability-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopCapability-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopCapability-response
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopCapability)))
  'StopCapability-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopCapability)))
  'StopCapability-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopCapability)))
  "Returns string type for a service object of type '<StopCapability>"
  "capabilities/StopCapability")