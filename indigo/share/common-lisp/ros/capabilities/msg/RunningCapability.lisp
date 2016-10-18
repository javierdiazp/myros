; Auto-generated. Do not edit!


(cl:in-package capabilities-msg)


;//! \htmlinclude RunningCapability.msg.html

(cl:defclass <RunningCapability> (roslisp-msg-protocol:ros-message)
  ((capability
    :reader capability
    :initarg :capability
    :type capabilities-msg:Capability
    :initform (cl:make-instance 'capabilities-msg:Capability))
   (dependent_capabilities
    :reader dependent_capabilities
    :initarg :dependent_capabilities
    :type (cl:vector capabilities-msg:Capability)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:Capability :initial-element (cl:make-instance 'capabilities-msg:Capability)))
   (started_by
    :reader started_by
    :initarg :started_by
    :type cl:string
    :initform "")
   (pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0))
)

(cl:defclass RunningCapability (<RunningCapability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunningCapability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunningCapability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-msg:<RunningCapability> is deprecated: use capabilities-msg:RunningCapability instead.")))

(cl:ensure-generic-function 'capability-val :lambda-list '(m))
(cl:defmethod capability-val ((m <RunningCapability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:capability-val is deprecated.  Use capabilities-msg:capability instead.")
  (capability m))

(cl:ensure-generic-function 'dependent_capabilities-val :lambda-list '(m))
(cl:defmethod dependent_capabilities-val ((m <RunningCapability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:dependent_capabilities-val is deprecated.  Use capabilities-msg:dependent_capabilities instead.")
  (dependent_capabilities m))

(cl:ensure-generic-function 'started_by-val :lambda-list '(m))
(cl:defmethod started_by-val ((m <RunningCapability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:started_by-val is deprecated.  Use capabilities-msg:started_by instead.")
  (started_by m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <RunningCapability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-msg:pid-val is deprecated.  Use capabilities-msg:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunningCapability>) ostream)
  "Serializes a message object of type '<RunningCapability>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'capability) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dependent_capabilities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dependent_capabilities))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'started_by))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'started_by))
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunningCapability>) istream)
  "Deserializes a message object of type '<RunningCapability>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'capability) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dependent_capabilities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dependent_capabilities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:Capability))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'started_by) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'started_by) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunningCapability>)))
  "Returns string type for a message object of type '<RunningCapability>"
  "capabilities/RunningCapability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunningCapability)))
  "Returns string type for a message object of type 'RunningCapability"
  "capabilities/RunningCapability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunningCapability>)))
  "Returns md5sum for a message object of type '<RunningCapability>"
  "f97e2b23f907893008679ba2ff64fafc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunningCapability)))
  "Returns md5sum for a message object of type 'RunningCapability"
  "f97e2b23f907893008679ba2ff64fafc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunningCapability>)))
  "Returns full string definition for message of type '<RunningCapability>"
  (cl:format cl:nil "# Name and provider of this running capability~%Capability capability~%# Capabilities which depend on this one~%Capability[] dependent_capabilities~%# Message stating what started this capability~%string started_by~%# Process ID of the running provider~%int32 pid~%~%================================================================================~%MSG: capabilities/Capability~%# Capability~%string capability~%# Used provider~%string provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunningCapability)))
  "Returns full string definition for message of type 'RunningCapability"
  (cl:format cl:nil "# Name and provider of this running capability~%Capability capability~%# Capabilities which depend on this one~%Capability[] dependent_capabilities~%# Message stating what started this capability~%string started_by~%# Process ID of the running provider~%int32 pid~%~%================================================================================~%MSG: capabilities/Capability~%# Capability~%string capability~%# Used provider~%string provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunningCapability>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'capability))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dependent_capabilities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'started_by))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunningCapability>))
  "Converts a ROS message object to a list"
  (cl:list 'RunningCapability
    (cl:cons ':capability (capability msg))
    (cl:cons ':dependent_capabilities (dependent_capabilities msg))
    (cl:cons ':started_by (started_by msg))
    (cl:cons ':pid (pid msg))
))
