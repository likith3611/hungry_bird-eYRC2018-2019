; Auto-generated. Do not edit!


(cl:in-package pluto_camera_sense-msg)


;//! \htmlinclude frame.msg.html

(cl:defclass <frame> (roslisp-msg-protocol:ros-message)
  ((frameBuffer
    :reader frameBuffer
    :initarg :frameBuffer
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (frameSize
    :reader frameSize
    :initarg :frameSize
    :type cl:integer
    :initform 0)
   (iframe
    :reader iframe
    :initarg :iframe
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass frame (<frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pluto_camera_sense-msg:<frame> is deprecated: use pluto_camera_sense-msg:frame instead.")))

(cl:ensure-generic-function 'frameBuffer-val :lambda-list '(m))
(cl:defmethod frameBuffer-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pluto_camera_sense-msg:frameBuffer-val is deprecated.  Use pluto_camera_sense-msg:frameBuffer instead.")
  (frameBuffer m))

(cl:ensure-generic-function 'frameSize-val :lambda-list '(m))
(cl:defmethod frameSize-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pluto_camera_sense-msg:frameSize-val is deprecated.  Use pluto_camera_sense-msg:frameSize instead.")
  (frameSize m))

(cl:ensure-generic-function 'iframe-val :lambda-list '(m))
(cl:defmethod iframe-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pluto_camera_sense-msg:iframe-val is deprecated.  Use pluto_camera_sense-msg:iframe instead.")
  (iframe m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <frame>) ostream)
  "Serializes a message object of type '<frame>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frameBuffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'frameBuffer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'iframe) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <frame>) istream)
  "Deserializes a message object of type '<frame>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frameBuffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frameBuffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameSize)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iframe) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<frame>)))
  "Returns string type for a message object of type '<frame>"
  "pluto_camera_sense/frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'frame)))
  "Returns string type for a message object of type 'frame"
  "pluto_camera_sense/frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<frame>)))
  "Returns md5sum for a message object of type '<frame>"
  "6a745da853457763b31d9f94e2f97135")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'frame)))
  "Returns md5sum for a message object of type 'frame"
  "6a745da853457763b31d9f94e2f97135")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<frame>)))
  "Returns full string definition for message of type '<frame>"
  (cl:format cl:nil "uint8[] frameBuffer~%uint32 frameSize~%bool iframe~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'frame)))
  "Returns full string definition for message of type 'frame"
  (cl:format cl:nil "uint8[] frameBuffer~%uint32 frameSize~%bool iframe~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <frame>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frameBuffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <frame>))
  "Converts a ROS message object to a list"
  (cl:list 'frame
    (cl:cons ':frameBuffer (frameBuffer msg))
    (cl:cons ':frameSize (frameSize msg))
    (cl:cons ':iframe (iframe msg))
))
