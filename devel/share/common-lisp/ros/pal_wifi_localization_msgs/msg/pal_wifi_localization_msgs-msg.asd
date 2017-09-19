
(cl:in-package :asdf)

(defsystem "pal_wifi_localization_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WifiSignalList" :depends-on ("_package_WifiSignalList"))
    (:file "_package_WifiSignalList" :depends-on ("_package"))
    (:file "WifiSignal" :depends-on ("_package_WifiSignal"))
    (:file "_package_WifiSignal" :depends-on ("_package"))
    (:file "WifiSignalMap" :depends-on ("_package_WifiSignalMap"))
    (:file "_package_WifiSignalMap" :depends-on ("_package"))
  ))