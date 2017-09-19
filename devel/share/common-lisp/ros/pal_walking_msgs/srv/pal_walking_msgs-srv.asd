
(cl:in-package :asdf)

(defsystem "pal_walking_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WalkSteps" :depends-on ("_package_WalkSteps"))
    (:file "_package_WalkSteps" :depends-on ("_package"))
  ))