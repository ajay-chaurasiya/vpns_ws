; Auto-generated. Do not edit!


(cl:in-package vps-msg)


;//! \htmlinclude pathDetails.msg.html

(cl:defclass <pathDetails> (roslisp-msg-protocol:ros-message)
  ((oldX
    :reader oldX
    :initarg :oldX
    :type cl:integer
    :initform 0)
   (oldY
    :reader oldY
    :initarg :oldY
    :type cl:integer
    :initform 0)
   (newX
    :reader newX
    :initarg :newX
    :type cl:integer
    :initform 0)
   (newY
    :reader newY
    :initarg :newY
    :type cl:integer
    :initform 0)
   (oldAngle
    :reader oldAngle
    :initarg :oldAngle
    :type cl:integer
    :initform 0)
   (newAngle
    :reader newAngle
    :initarg :newAngle
    :type cl:integer
    :initform 0)
   (destX
    :reader destX
    :initarg :destX
    :type cl:integer
    :initform 0)
   (destY
    :reader destY
    :initarg :destY
    :type cl:integer
    :initform 0)
   (xc
    :reader xc
    :initarg :xc
    :type cl:float
    :initform 0.0)
   (yc
    :reader yc
    :initarg :yc
    :type cl:float
    :initform 0.0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass pathDetails (<pathDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pathDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pathDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vps-msg:<pathDetails> is deprecated: use vps-msg:pathDetails instead.")))

(cl:ensure-generic-function 'oldX-val :lambda-list '(m))
(cl:defmethod oldX-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:oldX-val is deprecated.  Use vps-msg:oldX instead.")
  (oldX m))

(cl:ensure-generic-function 'oldY-val :lambda-list '(m))
(cl:defmethod oldY-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:oldY-val is deprecated.  Use vps-msg:oldY instead.")
  (oldY m))

(cl:ensure-generic-function 'newX-val :lambda-list '(m))
(cl:defmethod newX-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:newX-val is deprecated.  Use vps-msg:newX instead.")
  (newX m))

(cl:ensure-generic-function 'newY-val :lambda-list '(m))
(cl:defmethod newY-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:newY-val is deprecated.  Use vps-msg:newY instead.")
  (newY m))

(cl:ensure-generic-function 'oldAngle-val :lambda-list '(m))
(cl:defmethod oldAngle-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:oldAngle-val is deprecated.  Use vps-msg:oldAngle instead.")
  (oldAngle m))

(cl:ensure-generic-function 'newAngle-val :lambda-list '(m))
(cl:defmethod newAngle-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:newAngle-val is deprecated.  Use vps-msg:newAngle instead.")
  (newAngle m))

(cl:ensure-generic-function 'destX-val :lambda-list '(m))
(cl:defmethod destX-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:destX-val is deprecated.  Use vps-msg:destX instead.")
  (destX m))

(cl:ensure-generic-function 'destY-val :lambda-list '(m))
(cl:defmethod destY-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:destY-val is deprecated.  Use vps-msg:destY instead.")
  (destY m))

(cl:ensure-generic-function 'xc-val :lambda-list '(m))
(cl:defmethod xc-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:xc-val is deprecated.  Use vps-msg:xc instead.")
  (xc m))

(cl:ensure-generic-function 'yc-val :lambda-list '(m))
(cl:defmethod yc-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:yc-val is deprecated.  Use vps-msg:yc instead.")
  (yc m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <pathDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vps-msg:text-val is deprecated.  Use vps-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pathDetails>) ostream)
  "Serializes a message object of type '<pathDetails>"
  (cl:let* ((signed (cl:slot-value msg 'oldX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'oldY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'newX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'newY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'oldAngle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'newAngle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'destX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'destY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pathDetails>) istream)
  "Deserializes a message object of type '<pathDetails>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oldX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oldY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'newX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'newY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oldAngle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'newAngle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pathDetails>)))
  "Returns string type for a message object of type '<pathDetails>"
  "vps/pathDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pathDetails)))
  "Returns string type for a message object of type 'pathDetails"
  "vps/pathDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pathDetails>)))
  "Returns md5sum for a message object of type '<pathDetails>"
  "b2679da3ca50ef65d8ae88e78f40991b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pathDetails)))
  "Returns md5sum for a message object of type 'pathDetails"
  "b2679da3ca50ef65d8ae88e78f40991b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pathDetails>)))
  "Returns full string definition for message of type '<pathDetails>"
  (cl:format cl:nil "int32 oldX~%int32 oldY~%int32 newX~%int32 newY~%int32 oldAngle~%int32 newAngle~%int32 destX~%int32 destY~%float32 xc~%float32 yc~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pathDetails)))
  "Returns full string definition for message of type 'pathDetails"
  (cl:format cl:nil "int32 oldX~%int32 oldY~%int32 newX~%int32 newY~%int32 oldAngle~%int32 newAngle~%int32 destX~%int32 destY~%float32 xc~%float32 yc~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pathDetails>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pathDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'pathDetails
    (cl:cons ':oldX (oldX msg))
    (cl:cons ':oldY (oldY msg))
    (cl:cons ':newX (newX msg))
    (cl:cons ':newY (newY msg))
    (cl:cons ':oldAngle (oldAngle msg))
    (cl:cons ':newAngle (newAngle msg))
    (cl:cons ':destX (destX msg))
    (cl:cons ':destY (destY msg))
    (cl:cons ':xc (xc msg))
    (cl:cons ':yc (yc msg))
    (cl:cons ':text (text msg))
))
