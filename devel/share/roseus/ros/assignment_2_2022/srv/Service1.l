;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::Service1)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'Service1 (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::SERVICE1")
  (make-package "ASSIGNMENT_2_2022::SERVICE1"))
(unless (find-package "ASSIGNMENT_2_2022::SERVICE1REQUEST")
  (make-package "ASSIGNMENT_2_2022::SERVICE1REQUEST"))
(unless (find-package "ASSIGNMENT_2_2022::SERVICE1RESPONSE")
  (make-package "ASSIGNMENT_2_2022::SERVICE1RESPONSE"))

(in-package "ROS")





(defclass assignment_2_2022::Service1Request
  :super ros::object
  :slots (_call ))

(defmethod assignment_2_2022::Service1Request
  (:init
   (&key
    ((:call __call) 0)
    )
   (send-super :init)
   (setq _call (round __call))
   self)
  (:call
   (&optional __call)
   (if __call (setq _call __call)) _call)
  (:serialization-length
   ()
   (+
    ;; int16 _call
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _call
       (write-word _call s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _call
     (setq _call (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass assignment_2_2022::Service1Response
  :super ros::object
  :slots (_reached _cancelled ))

(defmethod assignment_2_2022::Service1Response
  (:init
   (&key
    ((:reached __reached) 0)
    ((:cancelled __cancelled) 0)
    )
   (send-super :init)
   (setq _reached (round __reached))
   (setq _cancelled (round __cancelled))
   self)
  (:reached
   (&optional __reached)
   (if __reached (setq _reached __reached)) _reached)
  (:cancelled
   (&optional __cancelled)
   (if __cancelled (setq _cancelled __cancelled)) _cancelled)
  (:serialization-length
   ()
   (+
    ;; int16 _reached
    2
    ;; int16 _cancelled
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _reached
       (write-word _reached s)
     ;; int16 _cancelled
       (write-word _cancelled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _reached
     (setq _reached (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cancelled
     (setq _cancelled (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass assignment_2_2022::Service1
  :super ros::object
  :slots ())

(setf (get assignment_2_2022::Service1 :md5sum-) "e5d53304d667c7bb1c841768acfb5d86")
(setf (get assignment_2_2022::Service1 :datatype-) "assignment_2_2022/Service1")
(setf (get assignment_2_2022::Service1 :request) assignment_2_2022::Service1Request)
(setf (get assignment_2_2022::Service1 :response) assignment_2_2022::Service1Response)

(defmethod assignment_2_2022::Service1Request
  (:response () (instance assignment_2_2022::Service1Response :init)))

(setf (get assignment_2_2022::Service1Request :md5sum-) "e5d53304d667c7bb1c841768acfb5d86")
(setf (get assignment_2_2022::Service1Request :datatype-) "assignment_2_2022/Service1Request")
(setf (get assignment_2_2022::Service1Request :definition-)
      "int16 call
---
int16 reached
int16 cancelled

")

(setf (get assignment_2_2022::Service1Response :md5sum-) "e5d53304d667c7bb1c841768acfb5d86")
(setf (get assignment_2_2022::Service1Response :datatype-) "assignment_2_2022/Service1Response")
(setf (get assignment_2_2022::Service1Response :definition-)
      "int16 call
---
int16 reached
int16 cancelled

")



(provide :assignment_2_2022/Service1 "e5d53304d667c7bb1c841768acfb5d86")


