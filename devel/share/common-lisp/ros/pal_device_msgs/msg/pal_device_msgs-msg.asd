
(cl:in-package :asdf)

(defsystem "pal_device_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Bumper" :depends-on ("_package_Bumper"))
    (:file "_package_Bumper" :depends-on ("_package"))
    (:file "BatteryState" :depends-on ("_package_BatteryState"))
    (:file "_package_BatteryState" :depends-on ("_package"))
    (:file "LedGroup" :depends-on ("_package_LedGroup"))
    (:file "_package_LedGroup" :depends-on ("_package"))
  ))