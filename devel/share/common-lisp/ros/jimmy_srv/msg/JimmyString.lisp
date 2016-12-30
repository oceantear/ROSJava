; Auto-generated. Do not edit!


(cl:in-package jimmy_srv-msg)


;//! \htmlinclude JimmyString.msg.html

(cl:defclass <JimmyString> (roslisp-msg-protocol:ros-message)
  ((PatrolCmd
    :reader PatrolCmd
    :initarg :PatrolCmd
    :type cl:string
    :initform "")
   (orig_caller_id
    :reader orig_caller_id
    :initarg :orig_caller_id
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass JimmyString (<JimmyString>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JimmyString>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JimmyString)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jimmy_srv-msg:<JimmyString> is deprecated: use jimmy_srv-msg:JimmyString instead.")))

(cl:ensure-generic-function 'PatrolCmd-val :lambda-list '(m))
(cl:defmethod PatrolCmd-val ((m <JimmyString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jimmy_srv-msg:PatrolCmd-val is deprecated.  Use jimmy_srv-msg:PatrolCmd instead.")
  (PatrolCmd m))

(cl:ensure-generic-function 'orig_caller_id-val :lambda-list '(m))
(cl:defmethod orig_caller_id-val ((m <JimmyString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jimmy_srv-msg:orig_caller_id-val is deprecated.  Use jimmy_srv-msg:orig_caller_id instead.")
  (orig_caller_id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <JimmyString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jimmy_srv-msg:data-val is deprecated.  Use jimmy_srv-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JimmyString>) ostream)
  "Serializes a message object of type '<JimmyString>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'PatrolCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'PatrolCmd))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orig_caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orig_caller_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JimmyString>) istream)
  "Deserializes a message object of type '<JimmyString>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PatrolCmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'PatrolCmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orig_caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orig_caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JimmyString>)))
  "Returns string type for a message object of type '<JimmyString>"
  "jimmy_srv/JimmyString")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JimmyString)))
  "Returns string type for a message object of type 'JimmyString"
  "jimmy_srv/JimmyString")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JimmyString>)))
  "Returns md5sum for a message object of type '<JimmyString>"
  "fb3f80be0569f2704f76fceeb9b36238")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JimmyString)))
  "Returns md5sum for a message object of type 'JimmyString"
  "fb3f80be0569f2704f76fceeb9b36238")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JimmyString>)))
  "Returns full string definition for message of type '<JimmyString>"
  (cl:format cl:nil "# Integration test message~%# caller_id of most recent node to send this message~%#string caller_id~%string PatrolCmd~%# caller_id of the original node to send this message~%string orig_caller_id~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JimmyString)))
  "Returns full string definition for message of type 'JimmyString"
  (cl:format cl:nil "# Integration test message~%# caller_id of most recent node to send this message~%#string caller_id~%string PatrolCmd~%# caller_id of the original node to send this message~%string orig_caller_id~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JimmyString>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'PatrolCmd))
     4 (cl:length (cl:slot-value msg 'orig_caller_id))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JimmyString>))
  "Converts a ROS message object to a list"
  (cl:list 'JimmyString
    (cl:cons ':PatrolCmd (PatrolCmd msg))
    (cl:cons ':orig_caller_id (orig_caller_id msg))
    (cl:cons ':data (data msg))
))
