
(cl:in-package :asdf)

(defsystem "pal_walking_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :humanoid_nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WalkingStatus" :depends-on ("_package_WalkingStatus"))
    (:file "_package_WalkingStatus" :depends-on ("_package"))
    (:file "WalkingStep" :depends-on ("_package_WalkingStep"))
    (:file "_package_WalkingStep" :depends-on ("_package"))
  ))