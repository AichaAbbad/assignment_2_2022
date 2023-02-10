; Auto-generated. Do not edit!


(cl:in-package assignment_2_2022-msg)


;//! \htmlinclude position.msg.html

(cl:defclass <position> (roslisp-msg-protocol:ros-message)
  ((x_pos
    :reader x_pos
    :initarg :x_pos
    :type cl:float
    :initform 0.0)
   (y_pos
    :reader y_pos
    :initarg :y_pos
    :type cl:float
    :initform 0.0)
   (x_velocity_val
    :reader x_velocity_val
    :initarg :x_velocity_val
    :type cl:float
    :initform 0.0)
   (y_velocity_val
    :reader y_velocity_val
    :initarg :y_velocity_val
    :type cl:float
    :initform 0.0))
)

(cl:defclass position (<position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-msg:<position> is deprecated: use assignment_2_2022-msg:position instead.")))

(cl:ensure-generic-function 'x_pos-val :lambda-list '(m))
(cl:defmethod x_pos-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:x_pos-val is deprecated.  Use assignment_2_2022-msg:x_pos instead.")
  (x_pos m))

(cl:ensure-generic-function 'y_pos-val :lambda-list '(m))
(cl:defmethod y_pos-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:y_pos-val is deprecated.  Use assignment_2_2022-msg:y_pos instead.")
  (y_pos m))

(cl:ensure-generic-function 'x_velocity_val-val :lambda-list '(m))
(cl:defmethod x_velocity_val-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:x_velocity_val-val is deprecated.  Use assignment_2_2022-msg:x_velocity_val instead.")
  (x_velocity_val m))

(cl:ensure-generic-function 'y_velocity_val-val :lambda-list '(m))
(cl:defmethod y_velocity_val-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-msg:y_velocity_val-val is deprecated.  Use assignment_2_2022-msg:y_velocity_val instead.")
  (y_velocity_val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position>) ostream)
  "Serializes a message object of type '<position>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_velocity_val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_velocity_val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position>) istream)
  "Deserializes a message object of type '<position>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_velocity_val) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_velocity_val) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position>)))
  "Returns string type for a message object of type '<position>"
  "assignment_2_2022/position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position)))
  "Returns string type for a message object of type 'position"
  "assignment_2_2022/position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position>)))
  "Returns md5sum for a message object of type '<position>"
  "51353523648c2b26e75c869e3b7fb600")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position)))
  "Returns md5sum for a message object of type 'position"
  "51353523648c2b26e75c869e3b7fb600")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position>)))
  "Returns full string definition for message of type '<position>"
  (cl:format cl:nil "float32 x_pos~%float32 y_pos~%float32 x_velocity_val~%float32 y_velocity_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position)))
  "Returns full string definition for message of type 'position"
  (cl:format cl:nil "float32 x_pos~%float32 y_pos~%float32 x_velocity_val~%float32 y_velocity_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position>))
  "Converts a ROS message object to a list"
  (cl:list 'position
    (cl:cons ':x_pos (x_pos msg))
    (cl:cons ':y_pos (y_pos msg))
    (cl:cons ':x_velocity_val (x_velocity_val msg))
    (cl:cons ':y_velocity_val (y_velocity_val msg))
))
