
(cl:in-package :asdf)

(defsystem "pal_wifi_localization_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pal_wifi_localization_msgs-msg
)
  :components ((:file "_package")
    (:file "GetWifiMap" :depends-on ("_package_GetWifiMap"))
    (:file "_package_GetWifiMap" :depends-on ("_package"))
  ))