; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude FreeCapability-request.msg.html

(cl:defclass <FreeCapability-request> (roslisp-msg-protocol:ros-message)
  ((capability
    :reader capability
    :initarg :capability
    :type cl:string
    :initform "")
   (bond_id
    :reader bond_id
    :initarg :bond_id
    :type cl:string
    :initform ""))
)

(cl:defclass FreeCapability-request (<FreeCapability-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeCapability-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeCapability-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<FreeCapability-request> is deprecated: use capabilities-srv:FreeCapability-request instead.")))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <FreeCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability-val is deprecated.  Use capabilities-srv:capability instead.")
  (capability m))

(cl:ensure-generic-function 'bond_id-val :lambda-list '(m))
(cl:defmethod bond_id-val ((m <FreeCapability-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:bond_id-val is deprecated.  Use capabilities-srv:bond_id instead.")
  (bond_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeCapability-request>) ostream)
  "Serializes a message object of type '<FreeCapability-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'capability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'capability))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bond_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bond_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeCapability-request>) istream)
  "Deserializes a message object of type '<FreeCapability-request>"
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
      (cl:setf (cl:slot-value msg 'bond_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bond_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeCapability-request>)))
  "Returns string type for a service object of type '<FreeCapability-request>"
  "capabilities/FreeCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeCapability-request)))
  "Returns string type for a service object of type 'FreeCapability-request"
  "capabilities/FreeCapabilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeCapability-request>)))
  "Returns md5sum for a message object of type '<FreeCapability-request>"
  "a428ffea976541636efe63c8605fd3ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeCapability-request)))
  "Returns md5sum for a message object of type 'FreeCapability-request"
  "a428ffea976541636efe63c8605fd3ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeCapability-request>)))
  "Returns full string definition for message of type '<FreeCapability-request>"
  (cl:format cl:nil "string capability~%string bond_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeCapability-request)))
  "Returns full string definition for message of type 'FreeCapability-request"
  (cl:format cl:nil "string capability~%string bond_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeCapability-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capability))
     4 (cl:length (cl:slot-value msg 'bond_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeCapability-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeCapability-request
    (cl:cons ':capability (capability msg))
    (cl:cons ':bond_id (bond_id msg))
))
;//! \htmlinclude FreeCapability-response.msg.html

(cl:defclass <FreeCapability-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FreeCapability-response (<FreeCapability-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeCapability-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeCapability-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<FreeCapability-response> is deprecated: use capabilities-srv:FreeCapability-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeCapability-response>) ostream)
  "Serializes a message object of type '<FreeCapability-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeCapability-response>) istream)
  "Deserializes a message object of type '<FreeCapability-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeCapability-response>)))
  "Returns string type for a service object of type '<FreeCapability-response>"
  "capabilities/FreeCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeCapability-response)))
  "Returns string type for a service object of type 'FreeCapability-response"
  "capabilities/FreeCapabilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeCapability-response>)))
  "Returns md5sum for a message object of type '<FreeCapability-response>"
  "a428ffea976541636efe63c8605fd3ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeCapability-response)))
  "Returns md5sum for a message object of type 'FreeCapability-response"
  "a428ffea976541636efe63c8605fd3ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeCapability-response>)))
  "Returns full string definition for message of type '<FreeCapability-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeCapability-response)))
  "Returns full string definition for message of type 'FreeCapability-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeCapability-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeCapability-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeCapability-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FreeCapability)))
  'FreeCapability-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FreeCapability)))
  'FreeCapability-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeCapability)))
  "Returns string type for a service object of type '<FreeCapability>"
  "capabilities/FreeCapability")