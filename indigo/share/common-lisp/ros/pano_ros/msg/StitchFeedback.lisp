; Auto-generated. Do not edit!


(cl:in-package pano_ros-msg)


;//! \htmlinclude StitchFeedback.msg.html

(cl:defclass <StitchFeedback> (roslisp-msg-protocol:ros-message)
  ((percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0))
)

(cl:defclass StitchFeedback (<StitchFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StitchFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StitchFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pano_ros-msg:<StitchFeedback> is deprecated: use pano_ros-msg:StitchFeedback instead.")))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <StitchFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pano_ros-msg:percent_complete-val is deprecated.  Use pano_ros-msg:percent_complete instead.")
  (percent_complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StitchFeedback>) ostream)
  "Serializes a message object of type '<StitchFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StitchFeedback>) istream)
  "Deserializes a message object of type '<StitchFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StitchFeedback>)))
  "Returns string type for a message object of type '<StitchFeedback>"
  "pano_ros/StitchFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StitchFeedback)))
  "Returns string type for a message object of type 'StitchFeedback"
  "pano_ros/StitchFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StitchFeedback>)))
  "Returns md5sum for a message object of type '<StitchFeedback>"
  "d342375c60a5a58d3bc32664070a1368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StitchFeedback)))
  "Returns md5sum for a message object of type 'StitchFeedback"
  "d342375c60a5a58d3bc32664070a1368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StitchFeedback>)))
  "Returns full string definition for message of type '<StitchFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 percent_complete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StitchFeedback)))
  "Returns full string definition for message of type 'StitchFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 percent_complete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StitchFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StitchFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'StitchFeedback
    (cl:cons ':percent_complete (percent_complete msg))
))
