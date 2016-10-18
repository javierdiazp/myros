; Auto-generated. Do not edit!


(cl:in-package capabilities-msg)


;//! \htmlinclude CapabilitySpec.msg.html

(cl:defclass <CapabilitySpec> (roslisp-msg-protocol:ros-message)
  ((package
    :reader package
    :initarg :package
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform "")
   (default_provider
    :reader default_provider
    :initarg :default_provider
    :type cl:string
    :initform ""))
)

(cl:defclass CapabilitySpec (<CapabilitySpec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CapabilitySpec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CapabilitySpec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-msg:<CapabilitySpec> is deprecated: use capabilities-msg:CapabilitySpec instead.")))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <CapabilitySpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:package-val is deprecated.  Use capabilities-msg:package instead.")
  (package m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CapabilitySpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:type-val is deprecated.  Use capabilities-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <CapabilitySpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:content-val is deprecated.  Use capabilities-msg:content instead.")
  (content m))

(cl:ensure-generic-function 'default_provider-val :lambda-list '(m))
(cl:defmethod default_provider-val ((m <CapabilitySpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:default_provider-val is deprecated.  Use capabilities-msg:default_provider instead.")
  (default_provider m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CapabilitySpec>) ostream)
  "Serializes a message object of type '<CapabilitySpec>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'package))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'package))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'default_provider))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'default_provider))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CapabilitySpec>) istream)
  "Deserializes a message object of type '<CapabilitySpec>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'package) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'package) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'default_provider) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'default_provider) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CapabilitySpec>)))
  "Returns string type for a message object of type '<CapabilitySpec>"
  "capabilities/CapabilitySpec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CapabilitySpec)))
  "Returns string type for a message object of type 'CapabilitySpec"
  "capabilities/CapabilitySpec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CapabilitySpec>)))
  "Returns md5sum for a message object of type '<CapabilitySpec>"
  "410c606586817322b7ad85c73e4a4c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CapabilitySpec)))
  "Returns md5sum for a message object of type 'CapabilitySpec"
  "410c606586817322b7ad85c73e4a4c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CapabilitySpec>)))
  "Returns full string definition for message of type '<CapabilitySpec>"
  (cl:format cl:nil "# Package which contains this spec file~%string package~%~%# Type of spec file, one of:~%#   'capability_interface'~%#   'semantic_capability_interface'~%#   'capability_provider'~%string type~%~%# Raw string content of the spec file~%string content~%~%# The name of the default provider (pulled from ROS param's)~%# (only used for capability_interface specs)~%string default_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CapabilitySpec)))
  "Returns full string definition for message of type 'CapabilitySpec"
  (cl:format cl:nil "# Package which contains this spec file~%string package~%~%# Type of spec file, one of:~%#   'capability_interface'~%#   'semantic_capability_interface'~%#   'capability_provider'~%string type~%~%# Raw string content of the spec file~%string content~%~%# The name of the default provider (pulled from ROS param's)~%# (only used for capability_interface specs)~%string default_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CapabilitySpec>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'package))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'content))
     4 (cl:length (cl:slot-value msg 'default_provider))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CapabilitySpec>))
  "Converts a ROS message object to a list"
  (cl:list 'CapabilitySpec
    (cl:cons ':package (package msg))
    (cl:cons ':type (type msg))
    (cl:cons ':content (content msg))
    (cl:cons ':default_provider (default_provider msg))
))
