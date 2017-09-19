
(cl:in-package :asdf)

(defsystem "pal_web_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WebGoTo" :depends-on ("_package_WebGoTo"))
    (:file "_package_WebGoTo" :depends-on ("_package"))
  ))