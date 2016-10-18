; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetRunningCapabilities-request.msg.html

(cl:defclass <GetRunningCapabilities-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRunningCapabilities-request (<GetRunningCapabilities-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRunningCapabilities-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRunningCapabilities-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetRunningCapabilities-request> is deprecated: use capabilities-srv:GetRunningCapabilities-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRunningCapabilities-request>) ostream)
  "Serializes a message object of type '<GetRunningCapabilities-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRunningCapabilities-request>) istream)
  "Deserializes a message object of type '<GetRunningCapabilities-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRunningCapabilities-request>)))
  "Returns string type for a service object of type '<GetRunningCapabilities-request>"
  "capabilities/GetRunningCapabilitiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRunningCapabilities-request)))
  "Returns string type for a service object of type 'GetRunningCapabilities-request"
  "capabilities/GetRunningCapabilitiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRunningCapabilities-request>)))
  "Returns md5sum for a message object of type '<GetRunningCapabilities-request>"
  "e8e5cf68c34711ffaa719728f34ea7a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRunningCapabilities-request)))
  "Returns md5sum for a message object of type 'GetRunningCapabilities-request"
  "e8e5cf68c34711ffaa719728f34ea7a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRunningCapabilities-request>)))
  "Returns full string definition for message of type '<GetRunningCapabilities-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRunningCapabilities-request)))
  "Returns full string definition for message of type 'GetRunningCapabilities-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRunningCapabilities-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRunningCapabilities-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRunningCapabilities-request
))
;//! \htmlinclude GetRunningCapabilities-response.msg.html

(cl:defclass <GetRunningCapabilities-response> (roslisp-msg-protocol:ros-message)
  ((running_capabilities
    :reader running_capabilities
    :initarg :running_capabilities
    :type (cl:vector capabilities-msg:RunningCapability)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:RunningCapability :initial-element (cl:make-instance 'capabilities-msg:RunningCapability))))
)

(cl:defclass GetRunningCapabilities-response (<GetRunningCapabilities-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRunningCapabilities-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRunningCapabilities-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetRunningCapabilities-response> is deprecated: use capabilities-srv:GetRunningCapabilities-response instead.")))

(cl:ensure-generic-function 'running_capabilities-val :lambda-list '(m))
(cl:defmethod running_capabilities-val ((m <GetRunningCapabilities-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:running_capabilities-val is deprecated.  Use capabilities-srv:running_capabilities instead.")
  (running_capabilities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRunningCapabilities-response>) ostream)
  "Serializes a message object of type '<GetRunningCapabilities-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'running_capabilities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'running_capabilities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRunningCapabilities-response>) istream)
  "Deserializes a message object of type '<GetRunningCapabilities-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'running_capabilities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'running_capabilities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:RunningCapability))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRunningCapabilities-response>)))
  "Returns string type for a service object of type '<GetRunningCapabilities-response>"
  "capabilities/GetRunningCapabilitiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRunningCapabilities-response)))
  "Returns string type for a service object of type 'GetRunningCapabilities-response"
  "capabilities/GetRunningCapabilitiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRunningCapabilities-response>)))
  "Returns md5sum for a message object of type '<GetRunningCapabilities-response>"
  "e8e5cf68c34711ffaa719728f34ea7a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRunningCapabilities-response)))
  "Returns md5sum for a message object of type 'GetRunningCapabilities-response"
  "e8e5cf68c34711ffaa719728f34ea7a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRunningCapabilities-response>)))
  "Returns full string definition for message of type '<GetRunningCapabilities-response>"
  (cl:format cl:nil "RunningCapability[] running_capabilities~%~%~%================================================================================~%MSG: capabilities/RunningCapability~%# Name and provider of this running capability~%Capability capability~%# Capabilities which depend on this one~%Capability[] dependent_capabilities~%# Message stating what started this capability~%string started_by~%# Process ID of the running provider~%int32 pid~%~%================================================================================~%MSG: capabilities/Capability~%# Capability~%string capability~%# Used provider~%string provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRunningCapabilities-response)))
  "Returns full string definition for message of type 'GetRunningCapabilities-response"
  (cl:format cl:nil "RunningCapability[] running_capabilities~%~%~%================================================================================~%MSG: capabilities/RunningCapability~%# Name and provider of this running capability~%Capability capability~%# Capabilities which depend on this one~%Capability[] dependent_capabilities~%# Message stating what started this capability~%string started_by~%# Process ID of the running provider~%int32 pid~%~%================================================================================~%MSG: capabilities/Capability~%# Capability~%string capability~%# Used provider~%string provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRunningCapabilities-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'running_capabilities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRunningCapabilities-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRunningCapabilities-response
    (cl:cons ':running_capabilities (running_capabilities msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRunningCapabilities)))
  'GetRunningCapabilities-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRunningCapabilities)))
  'GetRunningCapabilities-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRunningCapabilities)))
  "Returns string type for a service object of type '<GetRunningCapabilities>"
  "capabilities/GetRunningCapabilities")