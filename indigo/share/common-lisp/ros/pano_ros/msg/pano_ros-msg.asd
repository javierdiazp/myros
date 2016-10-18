
(cl:in-package :asdf)

(defsystem "pano_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StitchActionResult" :depends-on ("_package_StitchActionResult"))
    (:file "_package_StitchActionResult" :depends-on ("_package"))
    (:file "PanoCaptureActionGoal" :depends-on ("_package_PanoCaptureActionGoal"))
    (:file "_package_PanoCaptureActionGoal" :depends-on ("_package"))
    (:file "PanoCaptureResult" :depends-on ("_package_PanoCaptureResult"))
    (:file "_package_PanoCaptureResult" :depends-on ("_package"))
    (:file "StitchAction" :depends-on ("_package_StitchAction"))
    (:file "_package_StitchAction" :depends-on ("_package"))
    (:file "StitchActionGoal" :depends-on ("_package_StitchActionGoal"))
    (:file "_package_StitchActionGoal" :depends-on ("_package"))
    (:file "StitchResult" :depends-on ("_package_StitchResult"))
    (:file "_package_StitchResult" :depends-on ("_package"))
    (:file "PanoCaptureAction" :depends-on ("_package_PanoCaptureAction"))
    (:file "_package_PanoCaptureAction" :depends-on ("_package"))
    (:file "PanoCaptureGoal" :depends-on ("_package_PanoCaptureGoal"))
    (:file "_package_PanoCaptureGoal" :depends-on ("_package"))
    (:file "StitchGoal" :depends-on ("_package_StitchGoal"))
    (:file "_package_StitchGoal" :depends-on ("_package"))
    (:file "PanoCaptureActionFeedback" :depends-on ("_package_PanoCaptureActionFeedback"))
    (:file "_package_PanoCaptureActionFeedback" :depends-on ("_package"))
    (:file "StitchFeedback" :depends-on ("_package_StitchFeedback"))
    (:file "_package_StitchFeedback" :depends-on ("_package"))
    (:file "PanoCaptureActionResult" :depends-on ("_package_PanoCaptureActionResult"))
    (:file "_package_PanoCaptureActionResult" :depends-on ("_package"))
    (:file "PanoCaptureFeedback" :depends-on ("_package_PanoCaptureFeedback"))
    (:file "_package_PanoCaptureFeedback" :depends-on ("_package"))
    (:file "StitchActionFeedback" :depends-on ("_package_StitchActionFeedback"))
    (:file "_package_StitchActionFeedback" :depends-on ("_package"))
    (:file "Pano" :depends-on ("_package_Pano"))
    (:file "_package_Pano" :depends-on ("_package"))
  ))