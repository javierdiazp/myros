; Auto-generated. Do not edit!


(cl:in-package capabilities-srv)


;//! \htmlinclude EstablishBond-request.msg.html

(cl:defclass <EstablishBond-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EstablishBond-request (<EstablishBond-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstablishBond-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstablishBond-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<EstablishBond-request> is deprecated: use capabilities-srv:EstablishBond-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstablishBond-request>) ostream)
  "Serializes a message object of type '<EstablishBond-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstablishBond-request>) istream)
  "Deserializes a message object of type '<EstablishBond-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstablishBond-request>)))
  "Returns string type for a service object of type '<EstablishBond-request>"
  "capabilities/EstablishBondRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstablishBond-request)))
  "Returns string type for a service object of type 'EstablishBond-request"
  "capabilities/EstablishBondRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstablishBond-request>)))
  "Returns md5sum for a message object of type '<EstablishBond-request>"
  "5dec67991af973eddfa86dc20c3faef0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstablishBond-request)))
  "Returns md5sum for a message object of type 'EstablishBond-request"
  "5dec67991af973eddfa86dc20c3faef0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstablishBond-request>)))
  "Returns full string definition for message of type '<EstablishBond-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstablishBond-request)))
  "Returns full string definition for message of type 'EstablishBond-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstablishBond-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstablishBond-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EstablishBond-request
))
;//! \htmlinclude EstablishBond-response.msg.html

(cl:defclass <EstablishBond-response> (roslisp-msg-protocol:ros-message)
  ((bond_id
    :reader bond_id
    :initarg :bond_id
    :type cl:string
    :initform ""))
)

(cl:defclass EstablishBond-response (<EstablishBond-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstablishBond-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstablishBond-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capabilities-srv:<EstablishBond-response> is deprecated: use capabilities-srv:EstablishBond-response instead.")))

(cl:ensure-generic-function 'bond_id-val :lambda-list '(m))
(cl:defmethod bond_id-val ((m <EstablishBond-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capabilities-srv:bond_id-val is deprecated.  Use capabilities-srv:bond_id instead.")
  (bond_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstablishBond-response>) ostream)
  "Serializes a message object of type '<EstablishBond-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bond_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bond_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstablishBond-response>) istream)
  "Deserializes a message object of type '<EstablishBond-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstablishBond-response>)))
  "Returns string type for a service object of type '<EstablishBond-response>"
  "capabilities/EstablishBondResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstablishBond-response)))
  "Returns string type for a service object of type 'EstablishBond-response"
  "capabilities/EstablishBondResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstablishBond-response>)))
  "Returns md5sum for a message object of type '<EstablishBond-response>"
  "5dec67991af973eddfa86dc20c3faef0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstablishBond-response)))
  "Returns md5sum for a message object of type 'EstablishBond-response"
  "5dec67991af973eddfa86dc20c3faef0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstablishBond-response>)))
  "Returns full string definition for message of type '<EstablishBond-response>"
  (cl:format cl:nil "string bond_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstablishBond-response)))
  "Returns full string definition for message of type 'EstablishBond-response"
  (cl:format cl:nil "string bond_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstablishBond-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bond_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstablishBond-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EstablishBond-response
    (cl:cons ':bond_id (bond_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EstablishBond)))
  'EstablishBond-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EstablishBond)))
  'EstablishBond-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstablishBond)))
  "Returns string type for a service object of type '<EstablishBond>"
  "capabilities/EstablishBond")