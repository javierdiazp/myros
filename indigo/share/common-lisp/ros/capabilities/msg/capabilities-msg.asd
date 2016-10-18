
(cl:in-package :asdf)

(defsystem "capabilities-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CapabilityEvent" :depends-on ("_package_CapabilityEvent"))
    (:file "_package_CapabilityEvent" :depends-on ("_package"))
    (:file "Remapping" :depends-on ("_package_Remapping"))
    (:file "_package_Remapping" :depends-on ("_package"))
    (:file "Capability" :depends-on ("_package_Capability"))
    (:file "_package_Capability" :depends-on ("_package"))
    (:file "CapabilitySpec" :depends-on ("_package_CapabilitySpec"))
    (:file "_package_CapabilitySpec" :depends-on ("_package"))
    (:file "RunningCapability" :depends-on ("_package_RunningCapability"))
    (:file "_package_RunningCapability" :depends-on ("_package"))
  ))