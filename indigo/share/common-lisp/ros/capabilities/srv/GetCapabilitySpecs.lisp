; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetCapabilitySpecs-request.msg.html

(cl:defclass <GetCapabilitySpecs-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCapabilitySpecs-request (<GetCapabilitySpecs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCapabilitySpecs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCapabilitySpecs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetCapabilitySpecs-request> is deprecated: use capabilities-srv:GetCapabilitySpecs-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCapabilitySpecs-request>) ostream)
  "Serializes a message object of type '<GetCapabilitySpecs-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCapabilitySpecs-request>) istream)
  "Deserializes a message object of type '<GetCapabilitySpecs-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCapabilitySpecs-request>)))
  "Returns string type for a service object of type '<GetCapabilitySpecs-request>"
  "capabilities/GetCapabilitySpecsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCapabilitySpecs-request)))
  "Returns string type for a service object of type 'GetCapabilitySpecs-request"
  "capabilities/GetCapabilitySpecsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCapabilitySpecs-request>)))
  "Returns md5sum for a message object of type '<GetCapabilitySpecs-request>"
  "70274a8d27cd41f8e0754661d97168f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCapabilitySpecs-request)))
  "Returns md5sum for a message object of type 'GetCapabilitySpecs-request"
  "70274a8d27cd41f8e0754661d97168f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCapabilitySpecs-request>)))
  "Returns full string definition for message of type '<GetCapabilitySpecs-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCapabilitySpecs-request)))
  "Returns full string definition for message of type 'GetCapabilitySpecs-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCapabilitySpecs-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCapabilitySpecs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCapabilitySpecs-request
))
;//! \htmlinclude GetCapabilitySpecs-response.msg.html

(cl:defclass <GetCapabilitySpecs-response> (roslisp-msg-protocol:ros-message)
  ((capability_specs
    :reader capability_specs
    :initarg :capability_specs
    :type (cl:vector capabilities-msg:CapabilitySpec)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:CapabilitySpec :initial-element (cl:make-instance 'capabilities-msg:CapabilitySpec))))
)

(cl:defclass GetCapabilitySpecs-response (<GetCapabilitySpecs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCapabilitySpecs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCapabilitySpecs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetCapabilitySpecs-response> is deprecated: use capabilities-srv:GetCapabilitySpecs-response instead.")))

(cl:ensure-generic-function 'capability_specs-val :lambda-list '(m))
(cl:defmethod capability_specs-val ((m <GetCapabilitySpecs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:capability_specs-val is deprecated.  Use capabilities-srv:capability_specs instead.")
  (capability_specs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCapabilitySpecs-response>) ostream)
  "Serializes a message object of type '<GetCapabilitySpecs-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'capability_specs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'capability_specs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCapabilitySpecs-response>) istream)
  "Deserializes a message object of type '<GetCapabilitySpecs-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'capability_specs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'capability_specs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:CapabilitySpec))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCapabilitySpecs-response>)))
  "Returns string type for a service object of type '<GetCapabilitySpecs-response>"
  "capabilities/GetCapabilitySpecsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCapabilitySpecs-response)))
  "Returns string type for a service object of type 'GetCapabilitySpecs-response"
  "capabilities/GetCapabilitySpecsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCapabilitySpecs-response>)))
  "Returns md5sum for a message object of type '<GetCapabilitySpecs-response>"
  "70274a8d27cd41f8e0754661d97168f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCapabilitySpecs-response)))
  "Returns md5sum for a message object of type 'GetCapabilitySpecs-response"
  "70274a8d27cd41f8e0754661d97168f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCapabilitySpecs-response>)))
  "Returns full string definition for message of type '<GetCapabilitySpecs-response>"
  (cl:format cl:nil "CapabilitySpec[] capability_specs~%~%================================================================================~%MSG: capabilities/CapabilitySpec~%# Package which contains this spec file~%string package~%~%# Type of spec file, one of:~%#   'capability_interface'~%#   'semantic_capability_interface'~%#   'capability_provider'~%string type~%~%# Raw string content of the spec file~%string content~%~%# The name of the default provider (pulled from ROS param's)~%# (only used for capability_interface specs)~%string default_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCapabilitySpecs-response)))
  "Returns full string definition for message of type 'GetCapabilitySpecs-response"
  (cl:format cl:nil "CapabilitySpec[] capability_specs~%~%================================================================================~%MSG: capabilities/CapabilitySpec~%# Package which contains this spec file~%string package~%~%# Type of spec file, one of:~%#   'capability_interface'~%#   'semantic_capability_interface'~%#   'capability_provider'~%string type~%~%# Raw string content of the spec file~%string content~%~%# The name of the default provider (pulled from ROS param's)~%# (only used for capability_interface specs)~%string default_provider~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCapabilitySpecs-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'capability_specs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCapabilitySpecs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCapabilitySpecs-response
    (cl:cons ':capability_specs (capability_specs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCapabilitySpecs)))
  'GetCapabilitySpecs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCapabilitySpecs)))
  'GetCapabilitySpecs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCapabilitySpecs)))
  "Returns string type for a service object of type '<GetCapabilitySpecs>"
  "capabilities/GetCapabilitySpecs")