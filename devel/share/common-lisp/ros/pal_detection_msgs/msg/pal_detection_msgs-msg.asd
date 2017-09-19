
(cl:in-package :asdf)

(defsystem "pal_detection_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceDetection" :depends-on ("_package_FaceDetection"))
    (:file "_package_FaceDetection" :depends-on ("_package"))
    (:file "WaveDetection" :depends-on ("_package_WaveDetection"))
    (:file "_package_WaveDetection" :depends-on ("_package"))
    (:file "Detection2d" :depends-on ("_package_Detection2d"))
    (:file "_package_Detection2d" :depends-on ("_package"))
    (:file "FaceDetections" :depends-on ("_package_FaceDetections"))
    (:file "_package_FaceDetections" :depends-on ("_package"))
    (:file "TexturedObjectDetection" :depends-on ("_package_TexturedObjectDetection"))
    (:file "_package_TexturedObjectDetection" :depends-on ("_package"))
    (:file "RotatedDetection2d" :depends-on ("_package_RotatedDetection2d"))
    (:file "_package_RotatedDetection2d" :depends-on ("_package"))
    (:file "PersonDetection" :depends-on ("_package_PersonDetection"))
    (:file "_package_PersonDetection" :depends-on ("_package"))
    (:file "Detections2d" :depends-on ("_package_Detections2d"))
    (:file "_package_Detections2d" :depends-on ("_package"))
    (:file "LegDetections" :depends-on ("_package_LegDetections"))
    (:file "_package_LegDetections" :depends-on ("_package"))
    (:file "RecognizedActions" :depends-on ("_package_RecognizedActions"))
    (:file "_package_RecognizedActions" :depends-on ("_package"))
    (:file "PersonDetections" :depends-on ("_package_PersonDetections"))
    (:file "_package_PersonDetections" :depends-on ("_package"))
  ))