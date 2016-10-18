; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude GetRemappings-request.msg.html

(cl:defclass <GetRemappings-request> (roslisp-msg-protocol:ros-message)
  ((spec
    :reader spec
    :initarg :spec
    :type cl:string
    :initform ""))
)

(cl:defclass GetRemappings-request (<GetRemappings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRemappings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRemappings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetRemappings-request> is deprecated: use capabilities-srv:GetRemappings-request instead.")))

(cl:ensure-generic-function 'spec-val :lambda-list '(m))
(cl:defmethod spec-val ((m <GetRemappings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:spec-val is deprecated.  Use capabilities-srv:spec instead.")
  (spec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRemappings-request>) ostream)
  "Serializes a message object of type '<GetRemappings-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'spec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRemappings-request>) istream)
  "Deserializes a message object of type '<GetRemappings-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'spec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'spec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRemappings-request>)))
  "Returns string type for a service object of type '<GetRemappings-request>"
  "capabilities/GetRemappingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRemappings-request)))
  "Returns string type for a service object of type 'GetRemappings-request"
  "capabilities/GetRemappingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRemappings-request>)))
  "Returns md5sum for a message object of type '<GetRemappings-request>"
  "e08cc3bd533b5554ccb1906769ad809b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRemappings-request)))
  "Returns md5sum for a message object of type 'GetRemappings-request"
  "e08cc3bd533b5554ccb1906769ad809b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRemappings-request>)))
  "Returns full string definition for message of type '<GetRemappings-request>"
  (cl:format cl:nil "string spec~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRemappings-request)))
  "Returns full string definition for message of type 'GetRemappings-request"
  (cl:format cl:nil "string spec~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRemappings-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'spec))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRemappings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRemappings-request
    (cl:cons ':spec (spec msg))
))
;//! \htmlinclude GetRemappings-response.msg.html

(cl:defclass <GetRemappings-response> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type (cl:vector capabilities-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:Remapping :initial-element (cl:make-instance 'capabilities-msg:Remapping)))
   (services
    :reader services
    :initarg :services
    :type (cl:vector capabilities-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:Remapping :initial-element (cl:make-instance 'capabilities-msg:Remapping)))
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector capabilities-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:Remapping :initial-element (cl:make-instance 'capabilities-msg:Remapping)))
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector capabilities-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'capabilities-msg:Remapping :initial-element (cl:make-instance 'capabilities-msg:Remapping))))
)

(cl:defclass GetRemappings-response (<GetRemappings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRemappings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRemappings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<GetRemappings-response> is deprecated: use capabilities-srv:GetRemappings-response instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <GetRemappings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:topics-val is deprecated.  Use capabilities-srv:topics instead.")
  (topics m))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <GetRemappings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:services-val is deprecated.  Use capabilities-srv:services instead.")
  (services m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <GetRemappings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:actions-val is deprecated.  Use capabilities-srv:actions instead.")
  (actions m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetRemappings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:parameters-val is deprecated.  Use capabilities-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRemappings-response>) ostream)
  "Serializes a message object of type '<GetRemappings-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'topics))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'services))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRemappings-response>) istream)
  "Deserializes a message object of type '<GetRemappings-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capabilities-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRemappings-response>)))
  "Returns string type for a service object of type '<GetRemappings-response>"
  "capabilities/GetRemappingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRemappings-response)))
  "Returns string type for a service object of type 'GetRemappings-response"
  "capabilities/GetRemappingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRemappings-response>)))
  "Returns md5sum for a message object of type '<GetRemappings-response>"
  "e08cc3bd533b5554ccb1906769ad809b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRemappings-response)))
  "Returns md5sum for a message object of type 'GetRemappings-response"
  "e08cc3bd533b5554ccb1906769ad809b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRemappings-response>)))
  "Returns full string definition for message of type '<GetRemappings-response>"
  (cl:format cl:nil "Remapping[] topics~%Remapping[] services~%Remapping[] actions~%Remapping[] parameters~%~%~%================================================================================~%MSG: capabilities/Remapping~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRemappings-response)))
  "Returns full string definition for message of type 'GetRemappings-response"
  (cl:format cl:nil "Remapping[] topics~%Remapping[] services~%Remapping[] actions~%Remapping[] parameters~%~%~%================================================================================~%MSG: capabilities/Remapping~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRemappings-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRemappings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRemappings-response
    (cl:cons ':topics (topics msg))
    (cl:cons ':services (services msg))
    (cl:cons ':actions (actions msg))
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRemappings)))
  'GetRemappings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRemappings)))
  'GetRemappings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRemappings)))
  "Returns string type for a service object of type '<GetRemappings>"
  "capabilities/GetRemappings")