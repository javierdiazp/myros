; Auto-generated. Do not edit!


(cl:in-package capabilities-msg)


;//! \htmlinclude Capability.msg.html

(cl:defclass <Capability> (roslisp-msg-protocol:ros-message)
  ((capability
    :reader capability
    :initarg :capability
    :type cl:string
    :initform "")
   (provider
    :reader provider
    :initarg :provider
    :type cl:string
    :initform ""))
)

(cl:defclass Capability (<Capability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Capability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Capability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-msg:<Capability> is deprecated: use capabilities-msg:Capability instead.")))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <Capability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:capability-val is deprecated.  Use capabilities-msg:capability instead.")
  (capability m))

(cl:ensure-generic-function 'provider-val :lambda-list '(m))
(cl:defmethod provider-val ((m <Capability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:provider-val is deprecated.  Use capabilities-msg:provider instead.")
  (provider m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Capability>) ostream)
  "Serializes a message object of type '<Capability>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'capability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'capability))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'provider))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'provider))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Capability>) istream)
  "Deserializes a message object of type '<Capability>"
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
      (cl:setf (cl:slot-value msg 'provider) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'provider) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Capability>)))
  "Returns string type for a message object of type '<Capability>"
  "capabilities/Capability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capability)))
  "Returns string type for a message object of type 'Capability"
  "capabilities/Capability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Capability>)))
  "Returns md5sum for a message object of type '<Capability>"
  "05f9dd41875315c324efdf915b0e33a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Capability)))
  "Returns md5sum for a message object of type 'Capability"
  "05f9dd41875315c324efdf915b0e33a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Capability>)))
  "Returns full string definition for message of type '<Capability>"
  (cl:format cl:nil "# Capability~%string capability~%# Used provider~%string provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Capability)))
  "Returns full string definition for message of type 'Capability"
  (cl:format cl:nil "# Capability~%string capability~%# Used provider~%string provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Capability>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capability))
     4 (cl:length (cl:slot-value msg 'provider))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Capability>))
  "Converts a ROS message object to a list"
  (cl:list 'Capability
    (cl:cons ':capability (capability msg))
    (cl:cons ':provider (provider msg))
))
