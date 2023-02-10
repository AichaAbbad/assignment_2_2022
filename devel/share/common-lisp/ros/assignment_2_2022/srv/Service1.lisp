; Auto-generated. Do not edit!


(cl:in-package assignment_2_2022-srv)


;//! \htmlinclude Service1-request.msg.html

(cl:defclass <Service1-request> (roslisp-msg-protocol:ros-message)
  ((call
    :reader call
    :initarg :call
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Service1-request (<Service1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<Service1-request> is deprecated: use assignment_2_2022-srv:Service1-request instead.")))

(cl:ensure-generic-function 'call-val :lambda-list '(m))
(cl:defmethod call-val ((m <Service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:call-val is deprecated.  Use assignment_2_2022-srv:call instead.")
  (call m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service1-request>) ostream)
  "Serializes a message object of type '<Service1-request>"
  (cl:let* ((signed (cl:slot-value msg 'call)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service1-request>) istream)
  "Deserializes a message object of type '<Service1-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'call) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service1-request>)))
  "Returns string type for a service object of type '<Service1-request>"
  "assignment_2_2022/Service1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service1-request)))
  "Returns string type for a service object of type 'Service1-request"
  "assignment_2_2022/Service1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service1-request>)))
  "Returns md5sum for a message object of type '<Service1-request>"
  "e5d53304d667c7bb1c841768acfb5d86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service1-request)))
  "Returns md5sum for a message object of type 'Service1-request"
  "e5d53304d667c7bb1c841768acfb5d86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service1-request>)))
  "Returns full string definition for message of type '<Service1-request>"
  (cl:format cl:nil "int16 call~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service1-request)))
  "Returns full string definition for message of type 'Service1-request"
  (cl:format cl:nil "int16 call~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service1-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Service1-request
    (cl:cons ':call (call msg))
))
;//! \htmlinclude Service1-response.msg.html

(cl:defclass <Service1-response> (roslisp-msg-protocol:ros-message)
  ((reached
    :reader reached
    :initarg :reached
    :type cl:fixnum
    :initform 0)
   (cancelled
    :reader cancelled
    :initarg :cancelled
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Service1-response (<Service1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<Service1-response> is deprecated: use assignment_2_2022-srv:Service1-response instead.")))

(cl:ensure-generic-function 'reached-val :lambda-list '(m))
(cl:defmethod reached-val ((m <Service1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:reached-val is deprecated.  Use assignment_2_2022-srv:reached instead.")
  (reached m))

(cl:ensure-generic-function 'cancelled-val :lambda-list '(m))
(cl:defmethod cancelled-val ((m <Service1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:cancelled-val is deprecated.  Use assignment_2_2022-srv:cancelled instead.")
  (cancelled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service1-response>) ostream)
  "Serializes a message object of type '<Service1-response>"
  (cl:let* ((signed (cl:slot-value msg 'reached)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cancelled)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service1-response>) istream)
  "Deserializes a message object of type '<Service1-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reached) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cancelled) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service1-response>)))
  "Returns string type for a service object of type '<Service1-response>"
  "assignment_2_2022/Service1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service1-response)))
  "Returns string type for a service object of type 'Service1-response"
  "assignment_2_2022/Service1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service1-response>)))
  "Returns md5sum for a message object of type '<Service1-response>"
  "e5d53304d667c7bb1c841768acfb5d86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service1-response)))
  "Returns md5sum for a message object of type 'Service1-response"
  "e5d53304d667c7bb1c841768acfb5d86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service1-response>)))
  "Returns full string definition for message of type '<Service1-response>"
  (cl:format cl:nil "int16 reached~%int16 cancelled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service1-response)))
  "Returns full string definition for message of type 'Service1-response"
  (cl:format cl:nil "int16 reached~%int16 cancelled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service1-response>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Service1-response
    (cl:cons ':reached (reached msg))
    (cl:cons ':cancelled (cancelled msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Service1)))
  'Service1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Service1)))
  'Service1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service1)))
  "Returns string type for a service object of type '<Service1>"
  "assignment_2_2022/Service1")