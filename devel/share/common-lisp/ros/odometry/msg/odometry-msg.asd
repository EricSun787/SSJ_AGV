
(cl:in-package :asdf)

(defsystem "odometry-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "car_speed" :depends-on ("_package_car_speed"))
    (:file "_package_car_speed" :depends-on ("_package"))
  ))