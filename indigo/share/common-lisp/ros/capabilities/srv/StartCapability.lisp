; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude StartCapability-request.msg.html

(cl:defclass <StartCapability-request> (roslisp-msg-protocol:ros-message)
  ((capability
    :reader capability
    :initarg :capability
    :type cl:string
    :initform "")
   (preferred_provider
    :reader preferred_provider
    :initarg :preferred_provider
    :type cl:string
    :initform ""))
)

(cl:defclass StartCapability-request (<StartCapability-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartCapability-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartCapability-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<StartCapability-request> is deprecated: use capabilities-srv:StartCapability-request instead.")))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <StartCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability-val is deprecated.  Use capabilities-srv:capability instead.")
  (capability m))

(cl:ensure-generic-function 'preferred_provider-val :lambda-list '(m))
(cl:defmethod preferred_provider-val ((m <StartCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:preferred_provider-val is deprecated.  Use capabilities-srv:preferred_provider instead.")
  (preferred_provider m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartCapability-request>) ostream)
  "Serializes a message object of type '<StartCapability-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'capability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'capability))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'preferred_provider))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'preferred_provider))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartCapability-request>) istream)
  "Deserializes a message object of type '<StartCapability-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capability) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'capability) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'preferred_provider) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'preferred_provider) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartCapability-request>)))
  "Returns string type for a service object of type '<StartCapability-request>"
  "capabilities/StartCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCapability-request)))
  "Returns string type for a service object of type 'StartCapability-request"
  "capabilities/StartCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartCapability-request>)))
  "Returns md5sum for a message object of type '<StartCapability-request>"
  "2587a4e0f3f641f34be04be58c6a5098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartCapability-request)))
  "Returns md5sum for a message object of type 'StartCapability-request"
  "2587a4e0f3f641f34be04be58c6a5098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartCapability-request>)))
  "Returns full string definition for message of type '<StartCapability-request>"
  (cl:format cl:nil "string capability~%string preferred_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartCapability-request)))
  "Returns full string definition for message of type 'StartCapability-request"
  (cl:format cl:nil "string capability~%string preferred_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartCapability-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capability))
     4 (cl:length (cl:slot-value msg 'preferred_provider))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartCapability-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartCapability-request
    (cl:cons ':capability (capability msg))
    (cl:cons ':preferred_provider (preferred_provider msg))
))
;//! \htmlinclude StartCapability-response.msg.html

(cl:defclass <StartCapability-response> (roslisp-msg-protocol:ros-message)
  ((successful
    :reader successful
    :initarg :successful
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartCapability-response (<StartCapability-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartCapability-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartCapability-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<StartCapability-response> is deprecated: use capabilities-srv:StartCapability-response instead.")))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <StartCapability-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:successful-val is deprecated.  Use capabilities-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartCapability-response>) ostream)
  "Serializes a message object of type '<StartCapability-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'successful) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartCapability-response>) istream)
  "Deserializes a message object of type '<StartCapability-response>"
    (cl:setf (cl:slot-value msg 'successful) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartCapability-response>)))
  "Returns string type for a service object of type '<StartCapability-response>"
  "capabilities/StartCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCapability-response)))
  "Returns string type for a service object of type 'StartCapability-response"
  "capabilities/StartCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartCapability-response>)))
  "Returns md5sum for a message object of type '<StartCapability-response>"
  "2587a4e0f3f641f34be04be58c6a5098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartCapability-response)))
  "Returns md5sum for a message object of type 'StartCapability-response"
  "2587a4e0f3f641f34be04be58c6a5098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartCapability-response>)))
  "Returns full string definition for message of type '<StartCapability-response>"
  (cl:format cl:nil "bool successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartCapability-response)))
  "Returns full string definition for message of type 'StartCapability-response"
  (cl:format cl:nil "bool successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartCapability-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartCapability-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartCapability-response
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartCapability)))
  'StartCapability-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartCapability)))
  'StartCapability-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCapability)))
  "Returns string type for a service object of type '<StartCapability>"
  "capabilities/StartCapability")