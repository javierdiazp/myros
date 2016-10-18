; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetInterfaces-request.msg.html

(cl:defclass <GetInterfaces-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetInterfaces-request (<GetInterfaces-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInterfaces-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInterfaces-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetInterfaces-request> is deprecated: use capabilities-srv:GetInterfaces-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInterfaces-request>) ostream)
  "Serializes a message object of type '<GetInterfaces-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInterfaces-request>) istream)
  "Deserializes a message object of type '<GetInterfaces-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInterfaces-request>)))
  "Returns string type for a service object of type '<GetInterfaces-request>"
  "capabilities/GetInterfacesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInterfaces-request)))
  "Returns string type for a service object of type 'GetInterfaces-request"
  "capabilities/GetInterfacesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInterfaces-request>)))
  "Returns md5sum for a message object of type '<GetInterfaces-request>"
  "1e08367cf1ecdb90202f4711ad4955a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInterfaces-request)))
  "Returns md5sum for a message object of type 'GetInterfaces-request"
  "1e08367cf1ecdb90202f4711ad4955a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInterfaces-request>)))
  "Returns full string definition for message of type '<GetInterfaces-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInterfaces-request)))
  "Returns full string definition for message of type 'GetInterfaces-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInterfaces-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInterfaces-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInterfaces-request
))
;//! \htmlinclude GetInterfaces-response.msg.html

(cl:defclass <GetInterfaces-response> (roslisp-msg-protocol:ros-message)
  ((interfaces
    :reader interfaces
    :initarg :interfaces
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetInterfaces-response (<GetInterfaces-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInterfaces-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInterfaces-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetInterfaces-response> is deprecated: use capabilities-srv:GetInterfaces-response instead.")))

(cl:ensure-generic-function 'interfaces-val :lambda-list '(m))
(cl:defmethod interfaces-val ((m <GetInterfaces-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:interfaces-val is deprecated.  Use capabilities-srv:interfaces instead.")
  (interfaces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInterfaces-response>) ostream)
  "Serializes a message object of type '<GetInterfaces-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interfaces))))
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
   (cl:slot-value msg 'interfaces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInterfaces-response>) istream)
  "Deserializes a message object of type '<GetInterfaces-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interfaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interfaces)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInterfaces-response>)))
  "Returns string type for a service object of type '<GetInterfaces-response>"
  "capabilities/GetInterfacesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInterfaces-response)))
  "Returns string type for a service object of type 'GetInterfaces-response"
  "capabilities/GetInterfacesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInterfaces-response>)))
  "Returns md5sum for a message object of type '<GetInterfaces-response>"
  "1e08367cf1ecdb90202f4711ad4955a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInterfaces-response)))
  "Returns md5sum for a message object of type 'GetInterfaces-response"
  "1e08367cf1ecdb90202f4711ad4955a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInterfaces-response>)))
  "Returns full string definition for message of type '<GetInterfaces-response>"
  (cl:format cl:nil "string[] interfaces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInterfaces-response)))
  "Returns full string definition for message of type 'GetInterfaces-response"
  (cl:format cl:nil "string[] interfaces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInterfaces-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interfaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInterfaces-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInterfaces-response
    (cl:cons ':interfaces (interfaces msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInterfaces)))
  'GetInterfaces-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInterfaces)))
  'GetInterfaces-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInterfaces)))
  "Returns string type for a service object of type '<GetInterfaces>"
  "capabilities/GetInterfaces")