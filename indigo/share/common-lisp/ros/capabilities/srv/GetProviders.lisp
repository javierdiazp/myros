; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetProviders-request.msg.html

(cl:defclass <GetProviders-request> (roslisp-msg-protocol:ros-message)
  ((interface
    :reader interface
    :initarg :interface
    :type cl:string
    :initform "")
   (include_semantic
    :reader include_semantic
    :initarg :include_semantic
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetProviders-request (<GetProviders-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProviders-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProviders-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetProviders-request> is deprecated: use capabilities-srv:GetProviders-request instead.")))

(cl:ensure-generic-function 'interface-val :lambda-list '(m))
(cl:defmethod interface-val ((m <GetProviders-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:interface-val is deprecated.  Use capabilities-srv:interface instead.")
  (interface m))

(cl:ensure-generic-function 'include_semantic-val :lambda-list '(m))
(cl:defmethod include_semantic-val ((m <GetProviders-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:include_semantic-val is deprecated.  Use capabilities-srv:include_semantic instead.")
  (include_semantic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProviders-request>) ostream)
  "Serializes a message object of type '<GetProviders-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'interface))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'include_semantic) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProviders-request>) istream)
  "Deserializes a message object of type '<GetProviders-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interface) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'interface) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'include_semantic) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProviders-request>)))
  "Returns string type for a service object of type '<GetProviders-request>"
  "capabilities/GetProvidersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProviders-request)))
  "Returns string type for a service object of type 'GetProviders-request"
  "capabilities/GetProvidersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProviders-request>)))
  "Returns md5sum for a message object of type '<GetProviders-request>"
  "d7193b8cbc296323bd5043e53d4b02d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProviders-request)))
  "Returns md5sum for a message object of type 'GetProviders-request"
  "d7193b8cbc296323bd5043e53d4b02d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProviders-request>)))
  "Returns full string definition for message of type '<GetProviders-request>"
  (cl:format cl:nil "string interface~%bool include_semantic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProviders-request)))
  "Returns full string definition for message of type 'GetProviders-request"
  (cl:format cl:nil "string interface~%bool include_semantic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProviders-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'interface))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProviders-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProviders-request
    (cl:cons ':interface (interface msg))
    (cl:cons ':include_semantic (include_semantic msg))
))
;//! \htmlinclude GetProviders-response.msg.html

(cl:defclass <GetProviders-response> (roslisp-msg-protocol:ros-message)
  ((providers
    :reader providers
    :initarg :providers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (default_provider
    :reader default_provider
    :initarg :default_provider
    :type cl:string
    :initform ""))
)

(cl:defclass GetProviders-response (<GetProviders-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProviders-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProviders-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetProviders-response> is deprecated: use capabilities-srv:GetProviders-response instead.")))

(cl:ensure-generic-function 'providers-val :lambda-list '(m))
(cl:defmethod providers-val ((m <GetProviders-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:providers-val is deprecated.  Use capabilities-srv:providers instead.")
  (providers m))

(cl:ensure-generic-function 'default_provider-val :lambda-list '(m))
(cl:defmethod default_provider-val ((m <GetProviders-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:default_provider-val is deprecated.  Use capabilities-srv:default_provider instead.")
  (default_provider m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProviders-response>) ostream)
  "Serializes a message object of type '<GetProviders-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'providers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'providers))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'default_provider))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'default_provider))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProviders-response>) istream)
  "Deserializes a message object of type '<GetProviders-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'providers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'providers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProviders-response>)))
  "Returns string type for a service object of type '<GetProviders-response>"
  "capabilities/GetProvidersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProviders-response)))
  "Returns string type for a service object of type 'GetProviders-response"
  "capabilities/GetProvidersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProviders-response>)))
  "Returns md5sum for a message object of type '<GetProviders-response>"
  "d7193b8cbc296323bd5043e53d4b02d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProviders-response)))
  "Returns md5sum for a message object of type 'GetProviders-response"
  "d7193b8cbc296323bd5043e53d4b02d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProviders-response>)))
  "Returns full string definition for message of type '<GetProviders-response>"
  (cl:format cl:nil "string[] providers~%string default_provider~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProviders-response)))
  "Returns full string definition for message of type 'GetProviders-response"
  (cl:format cl:nil "string[] providers~%string default_provider~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProviders-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'providers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'default_provider))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProviders-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProviders-response
    (cl:cons ':providers (providers msg))
    (cl:cons ':default_provider (default_provider msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProviders)))
  'GetProviders-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProviders)))
  'GetProviders-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProviders)))
  "Returns string type for a service object of type '<GetProviders>"
  "capabilities/GetProviders")