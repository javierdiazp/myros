; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-srv)


;//! \htmlinclude ListPublishedServices-request.msg.html

(cl:defclass <ListPublishedServices-request> (roslisp-msg-protocol:ros-message)
  ((service_type
    :reader service_type
    :initarg :service_type
    :type cl:string
    :initform ""))
)

(cl:defclass ListPublishedServices-request (<ListPublishedServices-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListPublishedServices-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListPublishedServices-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<ListPublishedServices-request> is deprecated: use zeroconf_msgs-srv:ListPublishedServices-request instead.")))

(cl:ensure-generic-function 'service_type-val :lambda-list '(m))
(cl:defmethod service_type-val ((m <ListPublishedServices-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:service_type-val is deprecated.  Use zeroconf_msgs-srv:service_type instead.")
  (service_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListPublishedServices-request>) ostream)
  "Serializes a message object of type '<ListPublishedServices-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListPublishedServices-request>) istream)
  "Deserializes a message object of type '<ListPublishedServices-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListPublishedServices-request>)))
  "Returns string type for a service object of type '<ListPublishedServices-request>"
  "zeroconf_msgs/ListPublishedServicesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListPublishedServices-request)))
  "Returns string type for a service object of type 'ListPublishedServices-request"
  "zeroconf_msgs/ListPublishedServicesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListPublishedServices-request>)))
  "Returns md5sum for a message object of type '<ListPublishedServices-request>"
  "7d391b756e89ad5929088251d9e80c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListPublishedServices-request)))
  "Returns md5sum for a message object of type 'ListPublishedServices-request"
  "7d391b756e89ad5929088251d9e80c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListPublishedServices-request>)))
  "Returns full string definition for message of type '<ListPublishedServices-request>"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListPublishedServices-request)))
  "Returns full string definition for message of type 'ListPublishedServices-request"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListPublishedServices-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListPublishedServices-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListPublishedServices-request
    (cl:cons ':service_type (service_type msg))
))
;//! \htmlinclude ListPublishedServices-response.msg.html

(cl:defclass <ListPublishedServices-response> (roslisp-msg-protocol:ros-message)
  ((services
    :reader services
    :initarg :services
    :type (cl:vector zeroconf_msgs-msg:PublishedService)
   :initform (cl:make-array 0 :element-type 'zeroconf_msgs-msg:PublishedService :initial-element (cl:make-instance 'zeroconf_msgs-msg:PublishedService))))
)

(cl:defclass ListPublishedServices-response (<ListPublishedServices-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListPublishedServices-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListPublishedServices-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<ListPublishedServices-response> is deprecated: use zeroconf_msgs-srv:ListPublishedServices-response instead.")))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <ListPublishedServices-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:services-val is deprecated.  Use zeroconf_msgs-srv:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListPublishedServices-response>) ostream)
  "Serializes a message object of type '<ListPublishedServices-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'services))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListPublishedServices-response>) istream)
  "Deserializes a message object of type '<ListPublishedServices-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zeroconf_msgs-msg:PublishedService))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListPublishedServices-response>)))
  "Returns string type for a service object of type '<ListPublishedServices-response>"
  "zeroconf_msgs/ListPublishedServicesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListPublishedServices-response)))
  "Returns string type for a service object of type 'ListPublishedServices-response"
  "zeroconf_msgs/ListPublishedServicesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListPublishedServices-response>)))
  "Returns md5sum for a message object of type '<ListPublishedServices-response>"
  "7d391b756e89ad5929088251d9e80c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListPublishedServices-response)))
  "Returns md5sum for a message object of type 'ListPublishedServices-response"
  "7d391b756e89ad5929088251d9e80c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListPublishedServices-response>)))
  "Returns full string definition for message of type '<ListPublishedServices-response>"
  (cl:format cl:nil "zeroconf_msgs/PublishedService[] services~%~%~%================================================================================~%MSG: zeroconf_msgs/PublishedService~%#~%# Provides all the properties required for publishing of a zeroconf service.~%~%string name~%string type~%string domain~%int32 port~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListPublishedServices-response)))
  "Returns full string definition for message of type 'ListPublishedServices-response"
  (cl:format cl:nil "zeroconf_msgs/PublishedService[] services~%~%~%================================================================================~%MSG: zeroconf_msgs/PublishedService~%#~%# Provides all the properties required for publishing of a zeroconf service.~%~%string name~%string type~%string domain~%int32 port~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListPublishedServices-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListPublishedServices-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListPublishedServices-response
    (cl:cons ':services (services msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListPublishedServices)))
  'ListPublishedServices-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListPublishedServices)))
  'ListPublishedServices-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListPublishedServices)))
  "Returns string type for a service object of type '<ListPublishedServices>"
  "zeroconf_msgs/ListPublishedServices")