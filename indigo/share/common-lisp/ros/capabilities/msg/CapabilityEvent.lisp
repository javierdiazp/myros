; Auto-generated. Do not edit!


(cl:in-package capabilities-msg)


;//! \htmlinclude CapabilityEvent.msg.html

(cl:defclass <CapabilityEvent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (capability
    :reader capability
    :initarg :capability
    :type cl:string
    :initform "")
   (provider
    :reader provider
    :initarg :provider
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0))
)

(cl:defclass CapabilityEvent (<CapabilityEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CapabilityEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CapabilityEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-msg:<CapabilityEvent> is deprecated: use capabilities-msg:CapabilityEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CapabilityEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:header-val is deprecated.  Use capabilities-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <CapabilityEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:capability-val is deprecated.  Use capabilities-msg:capability instead.")
  (capability m))

(cl:ensure-generic-function 'provider-val :lambda-list '(m))
(cl:defmethod provider-val ((m <CapabilityEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:provider-val is deprecated.  Use capabilities-msg:provider instead.")
  (provider m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CapabilityEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:type-val is deprecated.  Use capabilities-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <CapabilityEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:pid-val is deprecated.  Use capabilities-msg:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CapabilityEvent>)))
    "Constants for message type '<CapabilityEvent>"
  '((:LAUNCHED . "launched")
    (:STOPPED . "stopped")
    (:TERMINATED . "terminated")
    (:SERVER_READY . "server_ready"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CapabilityEvent)))
    "Constants for message type 'CapabilityEvent"
  '((:LAUNCHED . "launched")
    (:STOPPED . "stopped")
    (:TERMINATED . "terminated")
    (:SERVER_READY . "server_ready"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CapabilityEvent>) ostream)
  "Serializes a message object of type '<CapabilityEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CapabilityEvent>) istream)
  "Deserializes a message object of type '<CapabilityEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CapabilityEvent>)))
  "Returns string type for a message object of type '<CapabilityEvent>"
  "capabilities/CapabilityEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CapabilityEvent)))
  "Returns string type for a message object of type 'CapabilityEvent"
  "capabilities/CapabilityEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CapabilityEvent>)))
  "Returns md5sum for a message object of type '<CapabilityEvent>"
  "5a0d82ee1a8e7a5d0b058f0b20305b18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CapabilityEvent)))
  "Returns md5sum for a message object of type 'CapabilityEvent"
  "5a0d82ee1a8e7a5d0b058f0b20305b18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CapabilityEvent>)))
  "Returns full string definition for message of type '<CapabilityEvent>"
  (cl:format cl:nil "Header header~%# Capability which this event pretains to~%string capability~%# Capability provider which this event pretains to~%string provider~%~%# Event types~%string LAUNCHED=\"launched\"~%string STOPPED=\"stopped\"~%string TERMINATED=\"terminated\"~%string SERVER_READY=\"server_ready\"~%# Event type~%string type~%~%# PID of the related process~%int32 pid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CapabilityEvent)))
  "Returns full string definition for message of type 'CapabilityEvent"
  (cl:format cl:nil "Header header~%# Capability which this event pretains to~%string capability~%# Capability provider which this event pretains to~%string provider~%~%# Event types~%string LAUNCHED=\"launched\"~%string STOPPED=\"stopped\"~%string TERMINATED=\"terminated\"~%string SERVER_READY=\"server_ready\"~%# Event type~%string type~%~%# PID of the related process~%int32 pid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CapabilityEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'capability))
     4 (cl:length (cl:slot-value msg 'provider))
     4 (cl:length (cl:slot-value msg 'type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CapabilityEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'CapabilityEvent
    (cl:cons ':header (header msg))
    (cl:cons ':capability (capability msg))
    (cl:cons ':provider (provider msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pid (pid msg))
))
