
(cl:in-package :asdf)

(defsystem "smart_battery_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SmartBatteryStatus" :depends-on ("_package_SmartBatteryStatus"))
    (:file "_package_SmartBatteryStatus" :depends-on ("_package"))
  ))