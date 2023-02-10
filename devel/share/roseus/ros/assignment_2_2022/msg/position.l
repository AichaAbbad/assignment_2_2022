;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::position)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'position (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::POSITION")
  (make-package "ASSIGNMENT_2_2022::POSITION"))

(in-package "ROS")
;;//! \htmlinclude position.msg.html


(defclass assignment_2_2022::position
  :super ros::object
  :slots (_x_pos _y_pos _x_velocity_val _y_velocity_val ))

(defmethod assignment_2_2022::position
  (:init
   (&key
    ((:x_pos __x_pos) 0.0)
    ((:y_pos __y_pos) 0.0)
    ((:x_velocity_val __x_velocity_val) 0.0)
    ((:y_velocity_val __y_velocity_val) 0.0)
    )
   (send-super :init)
   (setq _x_pos (float __x_pos))
   (setq _y_pos (float __y_pos))
   (setq _x_velocity_val (float __x_velocity_val))
   (setq _y_velocity_val (float __y_velocity_val))
   self)
  (:x_pos
   (&optional __x_pos)
   (if __x_pos (setq _x_pos __x_pos)) _x_pos)
  (:y_pos
   (&optional __y_pos)
   (if __y_pos (setq _y_pos __y_pos)) _y_pos)
  (:x_velocity_val
   (&optional __x_velocity_val)
   (if __x_velocity_val (setq _x_velocity_val __x_velocity_val)) _x_velocity_val)
  (:y_velocity_val
   (&optional __y_velocity_val)
   (if __y_velocity_val (setq _y_velocity_val __y_velocity_val)) _y_velocity_val)
  (:serialization-length
   ()
   (+
    ;; float32 _x_pos
    4
    ;; float32 _y_pos
    4
    ;; float32 _x_velocity_val
    4
    ;; float32 _y_velocity_val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x_pos
       (sys::poke _x_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_pos
       (sys::poke _y_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_velocity_val
       (sys::poke _x_velocity_val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_velocity_val
       (sys::poke _y_velocity_val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x_pos
     (setq _x_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_pos
     (setq _y_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_velocity_val
     (setq _x_velocity_val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_velocity_val
     (setq _y_velocity_val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment_2_2022::position :md5sum-) "51353523648c2b26e75c869e3b7fb600")
(setf (get assignment_2_2022::position :datatype-) "assignment_2_2022/position")
(setf (get assignment_2_2022::position :definition-)
      "float32 x_pos
float32 y_pos
float32 x_velocity_val
float32 y_velocity_val

")



(provide :assignment_2_2022/position "51353523648c2b26e75c869e3b7fb600")


