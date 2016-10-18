; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetCapabilitySpec-request.msg.html

(cl:defclass <GetCapabilitySpec-request> (roslisp-msg-protocol:ros-message)
  ((capability_spec
    :reader capability_spec
    :initarg :capability_spec
    :type cl:string
    :initform ""))
)

(cl:defclass GetCapabilitySpec-request (<GetCapabilitySpec-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCapabilitySpec-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCapabilitySpec-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetCapabilitySpec-request> is deprecated: use capabilities-srv:GetCapabilitySpec-request instead.")))

(cl:ensure-generic-function 'capability_spec-val :lambda-list '(m))
(cl:defmethod capability_spec-val ((m <GetCapabilitySpec-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability_spec-val is deprecated.  Use capabilities-srv:capability_spec instead.")
  (capability_spec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCapabilitySpec-request>) ostream)
  "Serializes a message object of type '<GetCapabilitySpec-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'capability_spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'capability_spec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCapabilitySpec-request>) istream)
  "Deserializes a message object of type '<GetCapabilitySpec-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capability_spec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'capability_spec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCapabilitySpec-request>)))
  "Returns string type for a service object of type '<GetCapabilitySpec-request>"
  "capabilities/GetCapabilitySpecRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCapabilitySpec-request)))
  "Returns string type for a service object of type 'GetCapabilitySpec-request"
  "capabilities/GetCapabilitySpecRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCapabilitySpec-request>)))
  "Returns md5sum for a message object of type '<GetCapabilitySpec-request>"
  "d32f85e5386368c45ff17463743a70f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCapabilitySpec-request)))
  "Returns md5sum for a message object of type 'GetCapabilitySpec-request"
  "d32f85e5386368c45ff17463743a70f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCapabilitySpec-request>)))
  "Returns full string definition for message of type '<GetCapabilitySpec-request>"
  (cl:format cl:nil "string capability_spec~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCapabilitySpec-request)))
  "Returns full string definition for message of type 'GetCapabilitySpec-request"
  (cl:format cl:nil "string capability_spec~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCapabilitySpec-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capability_spec))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCapabilitySpec-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCapabilitySpec-request
    (cl:cons ':capability_spec (capability_spec msg))
))
;//! \htmlinclude GetCapabilitySpec-response.msg.html

(cl:defclass <GetCapabilitySpec-response> (roslisp-msg-protocol:ros-message)
  ((capability_spec
    :reader capability_spec
    :initarg :capability_spec
    :type capabilities-msg:CapabilitySpec
    :initform (cl:make-instance 'capabilities-msg:CapabilitySpec)))
)

(cl:defclass GetCapabilitySpec-response (<GetCapabilitySpec-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCapabilitySpec-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCapabilitySpec-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetCapabilitySpec-response> is deprecated: use capabilities-srv:GetCapabilitySpec-response instead.")))

(cl:ensure-generic-function 'capability_spec-val :lambda-list '(m))
(cl:defmethod capability_spec-val ((m <GetCapabilitySpec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability_spec-val is deprecated.  Use capabilities-srv:capability_spec instead.")
  (capability_spec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCapabilitySpec-response>) ostream)
  "Serializes a message object of type '<GetCapabilitySpec-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'capability_spec) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCapabilitySpec-response>) istream)
  "Deserializes a message object of type '<GetCapabilitySpec-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'capability_spec) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCapabilitySpec-response>)))
  "Returns string type for a service object of type '<GetCapabilitySpec-response>"
  "capabilities/GetCapabilitySpecResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCapabilitySpec-response)))
  "Returns string type for a service object of type 'GetCapabilitySpec-response"
  "capabilities/GetCapabilitySpecResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCapabilitySpec-response>)))
  "Returns md5sum for a message object of type '<GetCapabilitySpec-response>"
  "d32f85e5386368c45ff17463743a70f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCapabilitySpec-response)))
  "Returns md5sum for a message object of type 'GetCapabilitySpec-response"
  "d32f85e5386368c45ff17463743a70f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCapabilitySpec-response>)))
  "Returns full string definition for message of type '<GetCapabilitySpec-response>"
  (cl:format cl:nil "CapabilitySpec capability_spec~%~%================================================================================~%MSG: capabilities/CapabilitySpec~%# Package which contains this spec file~%string package~%~%# Type of spec file, one of:~%#   'capability_interface'~%#   'semantic_capability_interface'~%#   'capability_provider'~%string type~%~%# Raw string content of the spec file~%string content~%~%# The name of the default provider (pulled from ROS param's)~%# (only used for capability_interface specs)~%string default_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCapabilitySpec-response)))
  "Returns full string definition for message of type 'GetCapabilitySpec-response"
  (cl:format cl:nil "CapabilitySpec capability_spec~%~%================================================================================~%MSG: capabilities/CapabilitySpec~%# Package which contains this spec file~%string package~%~%# Type of spec file, one of:~%#   'capability_interface'~%#   'semantic_capability_interface'~%#   'capability_provider'~%string type~%~%# Raw string content of the spec file~%string content~%~%# The name of the default provider (pulled from ROS param's)~%# (only used for capability_interface specs)~%string default_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCapabilitySpec-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'capability_spec))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCapabilitySpec-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCapabilitySpec-response
    (cl:cons ':capability_spec (capability_spec msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCapabilitySpec)))
  'GetCapabilitySpec-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCapabilitySpec)))
  'GetCapabilitySpec-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCapabilitySpec)))
  "Returns string type for a service object of type '<GetCapabilitySpec>"
  "capabilities/GetCapabilitySpec")