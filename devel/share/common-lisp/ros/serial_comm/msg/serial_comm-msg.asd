
(cl:in-package :asdf)

(defsystem "serial_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "car_speed" :depends-on ("_package_car_speed"))
    (:file "_package_car_speed" :depends-on ("_package"))
    (:file "pan_data" :depends-on ("_package_pan_data"))
    (:file "_package_pan_data" :depends-on ("_package"))
    (:file "serial_data" :depends-on ("_package_serial_data"))
    (:file "_package_serial_data" :depends-on ("_package"))
  ))