; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetSemanticInterfaces-request.msg.html

(cl:defclass <GetSemanticInterfaces-request> (roslisp-msg-protocol:ros-message)
  ((interface
    :reader interface
    :initarg :interface
    :type cl:string
    :initform ""))
)

(cl:defclass GetSemanticInterfaces-request (<GetSemanticInterfaces-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSemanticInterfaces-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSemanticInterfaces-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetSemanticInterfaces-request> is deprecated: use capabilities-srv:GetSemanticInterfaces-request instead.")))

(cl:ensure-generic-function 'interface-val :lambda-list '(m))
(cl:defmethod interface-val ((m <GetSemanticInterfaces-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:interface-val is deprecated.  Use capabilities-srv:interface instead.")
  (interface m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSemanticInterfaces-request>) ostream)
  "Serializes a message object of type '<GetSemanticInterfaces-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'interface))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSemanticInterfaces-request>) istream)
  "Deserializes a message object of type '<GetSemanticInterfaces-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interface) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'interface) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSemanticInterfaces-request>)))
  "Returns string type for a service object of type '<GetSemanticInterfaces-request>"
  "capabilities/GetSemanticInterfacesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticInterfaces-request)))
  "Returns string type for a service object of type 'GetSemanticInterfaces-request"
  "capabilities/GetSemanticInterfacesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSemanticInterfaces-request>)))
  "Returns md5sum for a message object of type '<GetSemanticInterfaces-request>"
  "2b0794f4415a7884148fc328bd6bc7d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSemanticInterfaces-request)))
  "Returns md5sum for a message object of type 'GetSemanticInterfaces-request"
  "2b0794f4415a7884148fc328bd6bc7d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSemanticInterfaces-request>)))
  "Returns full string definition for message of type '<GetSemanticInterfaces-request>"
  (cl:format cl:nil "string interface~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSemanticInterfaces-request)))
  "Returns full string definition for message of type 'GetSemanticInterfaces-request"
  (cl:format cl:nil "string interface~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSemanticInterfaces-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'interface))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSemanticInterfaces-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSemanticInterfaces-request
    (cl:cons ':interface (interface msg))
))
;//! \htmlinclude GetSemanticInterfaces-response.msg.html

(cl:defclass <GetSemanticInterfaces-response> (roslisp-msg-protocol:ros-message)
  ((semantic_interfaces
    :reader semantic_interfaces
    :initarg :semantic_interfaces
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetSemanticInterfaces-response (<GetSemanticInterfaces-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSemanticInterfaces-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSemanticInterfaces-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetSemanticInterfaces-response> is deprecated: use capabilities-srv:GetSemanticInterfaces-response instead.")))

(cl:ensure-generic-function 'semantic_interfaces-val :lambda-list '(m))
(cl:defmethod semantic_interfaces-val ((m <GetSemanticInterfaces-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:semantic_interfaces-val is deprecated.  Use capabilities-srv:semantic_interfaces instead.")
  (semantic_interfaces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSemanticInterfaces-response>) ostream)
  "Serializes a message object of type '<GetSemanticInterfaces-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'semantic_interfaces))))
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
   (cl:slot-value msg 'semantic_interfaces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSemanticInterfaces-response>) istream)
  "Deserializes a message object of type '<GetSemanticInterfaces-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'semantic_interfaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'semantic_interfaces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSemanticInterfaces-response>)))
  "Returns string type for a service object of type '<GetSemanticInterfaces-response>"
  "capabilities/GetSemanticInterfacesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticInterfaces-response)))
  "Returns string type for a service object of type 'GetSemanticInterfaces-response"
  "capabilities/GetSemanticInterfacesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSemanticInterfaces-response>)))
  "Returns md5sum for a message object of type '<GetSemanticInterfaces-response>"
  "2b0794f4415a7884148fc328bd6bc7d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSemanticInterfaces-response)))
  "Returns md5sum for a message object of type 'GetSemanticInterfaces-response"
  "2b0794f4415a7884148fc328bd6bc7d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSemanticInterfaces-response>)))
  "Returns full string definition for message of type '<GetSemanticInterfaces-response>"
  (cl:format cl:nil "string[] semantic_interfaces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSemanticInterfaces-response)))
  "Returns full string definition for message of type 'GetSemanticInterfaces-response"
  (cl:format cl:nil "string[] semantic_interfaces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSemanticInterfaces-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'semantic_interfaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSemanticInterfaces-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSemanticInterfaces-response
    (cl:cons ':semantic_interfaces (semantic_interfaces msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSemanticInterfaces)))
  'GetSemanticInterfaces-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSemanticInterfaces)))
  'GetSemanticInterfaces-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticInterfaces)))
  "Returns string type for a service object of type '<GetSemanticInterfaces>"
  "capabilities/GetSemanticInterfaces")