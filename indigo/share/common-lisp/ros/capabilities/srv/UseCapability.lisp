; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude UseCapability-request.msg.html

(cl:defclass <UseCapability-request> (roslisp-msg-protocol:ros-message)
  ((capability
    :reader capability
    :initarg :capability
    :type cl:string
    :initform "")
   (preferred_provider
    :reader preferred_provider
    :initarg :preferred_provider
    :type cl:string
    :initform "")
   (bond_id
    :reader bond_id
    :initarg :bond_id
    :type cl:string
    :initform ""))
)

(cl:defclass UseCapability-request (<UseCapability-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UseCapability-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UseCapability-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<UseCapability-request> is deprecated: use capabilities-srv:UseCapability-request instead.")))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <UseCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability-val is deprecated.  Use capabilities-srv:capability instead.")
  (capability m))

(cl:ensure-generic-function 'preferred_provider-val :lambda-list '(m))
(cl:defmethod preferred_provider-val ((m <UseCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:preferred_provider-val is deprecated.  Use capabilities-srv:preferred_provider instead.")
  (preferred_provider m))

(cl:ensure-generic-function 'bond_id-val :lambda-list '(m))
(cl:defmethod bond_id-val ((m <UseCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:bond_id-val is deprecated.  Use capabilities-srv:bond_id instead.")
  (bond_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UseCapability-request>) ostream)
  "Serializes a message object of type '<UseCapability-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bond_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bond_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UseCapability-request>) istream)
  "Deserializes a message object of type '<UseCapability-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bond_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bond_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UseCapability-request>)))
  "Returns string type for a service object of type '<UseCapability-request>"
  "capabilities/UseCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UseCapability-request)))
  "Returns string type for a service object of type 'UseCapability-request"
  "capabilities/UseCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UseCapability-request>)))
  "Returns md5sum for a message object of type '<UseCapability-request>"
  "d12bf387dc5fcdd1fb836406b703a384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UseCapability-request)))
  "Returns md5sum for a message object of type 'UseCapability-request"
  "d12bf387dc5fcdd1fb836406b703a384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UseCapability-request>)))
  "Returns full string definition for message of type '<UseCapability-request>"
  (cl:format cl:nil "string capability~%string preferred_provider~%string bond_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UseCapability-request)))
  "Returns full string definition for message of type 'UseCapability-request"
  (cl:format cl:nil "string capability~%string preferred_provider~%string bond_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UseCapability-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capability))
     4 (cl:length (cl:slot-value msg 'preferred_provider))
     4 (cl:length (cl:slot-value msg 'bond_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UseCapability-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UseCapability-request
    (cl:cons ':capability (capability msg))
    (cl:cons ':preferred_provider (preferred_provider msg))
    (cl:cons ':bond_id (bond_id msg))
))
;//! \htmlinclude UseCapability-response.msg.html

(cl:defclass <UseCapability-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UseCapability-response (<UseCapability-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UseCapability-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UseCapability-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<UseCapability-response> is deprecated: use capabilities-srv:UseCapability-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UseCapability-response>) ostream)
  "Serializes a message object of type '<UseCapability-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UseCapability-response>) istream)
  "Deserializes a message object of type '<UseCapability-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UseCapability-response>)))
  "Returns string type for a service object of type '<UseCapability-response>"
  "capabilities/UseCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UseCapability-response)))
  "Returns string type for a service object of type 'UseCapability-response"
  "capabilities/UseCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UseCapability-response>)))
  "Returns md5sum for a message object of type '<UseCapability-response>"
  "d12bf387dc5fcdd1fb836406b703a384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UseCapability-response)))
  "Returns md5sum for a message object of type 'UseCapability-response"
  "d12bf387dc5fcdd1fb836406b703a384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UseCapability-response>)))
  "Returns full string definition for message of type '<UseCapability-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UseCapability-response)))
  "Returns full string definition for message of type 'UseCapability-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UseCapability-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UseCapability-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UseCapability-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UseCapability)))
  'UseCapability-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UseCapability)))
  'UseCapability-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UseCapability)))
  "Returns string type for a service object of type '<UseCapability>"
  "capabilities/UseCapability")