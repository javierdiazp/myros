; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetNodeletManagerName-request.msg.html

(cl:defclass <GetNodeletManagerName-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNodeletManagerName-request (<GetNodeletManagerName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodeletManagerName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodeletManagerName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetNodeletManagerName-request> is deprecated: use capabilities-srv:GetNodeletManagerName-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodeletManagerName-request>) ostream)
  "Serializes a message object of type '<GetNodeletManagerName-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodeletManagerName-request>) istream)
  "Deserializes a message object of type '<GetNodeletManagerName-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodeletManagerName-request>)))
  "Returns string type for a service object of type '<GetNodeletManagerName-request>"
  "capabilities/GetNodeletManagerNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodeletManagerName-request)))
  "Returns string type for a service object of type 'GetNodeletManagerName-request"
  "capabilities/GetNodeletManagerNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodeletManagerName-request>)))
  "Returns md5sum for a message object of type '<GetNodeletManagerName-request>"
  "014bb50d87c6c69df1cbae3d5439041f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodeletManagerName-request)))
  "Returns md5sum for a message object of type 'GetNodeletManagerName-request"
  "014bb50d87c6c69df1cbae3d5439041f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodeletManagerName-request>)))
  "Returns full string definition for message of type '<GetNodeletManagerName-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodeletManagerName-request)))
  "Returns full string definition for message of type 'GetNodeletManagerName-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodeletManagerName-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodeletManagerName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodeletManagerName-request
))
;//! \htmlinclude GetNodeletManagerName-response.msg.html

(cl:defclass <GetNodeletManagerName-response> (roslisp-msg-protocol:ros-message)
  ((nodelet_manager_name
    :reader nodelet_manager_name
    :initarg :nodelet_manager_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetNodeletManagerName-response (<GetNodeletManagerName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodeletManagerName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodeletManagerName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetNodeletManagerName-response> is deprecated: use capabilities-srv:GetNodeletManagerName-response instead.")))

(cl:ensure-generic-function 'nodelet_manager_name-val :lambda-list '(m))
(cl:defmethod nodelet_manager_name-val ((m <GetNodeletManagerName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:nodelet_manager_name-val is deprecated.  Use capabilities-srv:nodelet_manager_name instead.")
  (nodelet_manager_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodeletManagerName-response>) ostream)
  "Serializes a message object of type '<GetNodeletManagerName-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nodelet_manager_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nodelet_manager_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodeletManagerName-response>) istream)
  "Deserializes a message object of type '<GetNodeletManagerName-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodelet_manager_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nodelet_manager_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodeletManagerName-response>)))
  "Returns string type for a service object of type '<GetNodeletManagerName-response>"
  "capabilities/GetNodeletManagerNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodeletManagerName-response)))
  "Returns string type for a service object of type 'GetNodeletManagerName-response"
  "capabilities/GetNodeletManagerNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodeletManagerName-response>)))
  "Returns md5sum for a message object of type '<GetNodeletManagerName-response>"
  "014bb50d87c6c69df1cbae3d5439041f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodeletManagerName-response)))
  "Returns md5sum for a message object of type 'GetNodeletManagerName-response"
  "014bb50d87c6c69df1cbae3d5439041f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodeletManagerName-response>)))
  "Returns full string definition for message of type '<GetNodeletManagerName-response>"
  (cl:format cl:nil "string nodelet_manager_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodeletManagerName-response)))
  "Returns full string definition for message of type 'GetNodeletManagerName-response"
  (cl:format cl:nil "string nodelet_manager_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodeletManagerName-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nodelet_manager_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodeletManagerName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodeletManagerName-response
    (cl:cons ':nodelet_manager_name (nodelet_manager_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNodeletManagerName)))
  'GetNodeletManagerName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNodeletManagerName)))
  'GetNodeletManagerName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodeletManagerName)))
  "Returns string type for a service object of type '<GetNodeletManagerName>"
  "capabilities/GetNodeletManagerName")