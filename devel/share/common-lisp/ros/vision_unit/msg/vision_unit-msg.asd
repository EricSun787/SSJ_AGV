
(cl:in-package :asdf)

(defsystem "vision_unit-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "armor_msg" :depends-on ("_package_armor_msg"))
    (:file "_package_armor_msg" :depends-on ("_package"))
    (:file "transformed_scan" :depends-on ("_package_transformed_scan"))
    (:file "_package_transformed_scan" :depends-on ("_package"))
  ))