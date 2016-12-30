;; Auto-generated. Do not edit!


(when (boundp 'jimmy_srv::JimmyString)
  (if (not (find-package "JIMMY_SRV"))
    (make-package "JIMMY_SRV"))
  (shadow 'JimmyString (find-package "JIMMY_SRV")))
(unless (find-package "JIMMY_SRV::JIMMYSTRING")
  (make-package "JIMMY_SRV::JIMMYSTRING"))

(in-package "ROS")
;;//! \htmlinclude JimmyString.msg.html


(defclass jimmy_srv::JimmyString
  :super ros::object
  :slots (_PatrolCmd _orig_caller_id _data ))

(defmethod jimmy_srv::JimmyString
  (:init
   (&key
    ((:PatrolCmd __PatrolCmd) "")
    ((:orig_caller_id __orig_caller_id) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _PatrolCmd (string __PatrolCmd))
   (setq _orig_caller_id (string __orig_caller_id))
   (setq _data (string __data))
   self)
  (:PatrolCmd
   (&optional __PatrolCmd)
   (if __PatrolCmd (setq _PatrolCmd __PatrolCmd)) _PatrolCmd)
  (:orig_caller_id
   (&optional __orig_caller_id)
   (if __orig_caller_id (setq _orig_caller_id __orig_caller_id)) _orig_caller_id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _PatrolCmd
    4 (length _PatrolCmd)
    ;; string _orig_caller_id
    4 (length _orig_caller_id)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _PatrolCmd
       (write-long (length _PatrolCmd) s) (princ _PatrolCmd s)
     ;; string _orig_caller_id
       (write-long (length _orig_caller_id) s) (princ _orig_caller_id s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _PatrolCmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _PatrolCmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _orig_caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orig_caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jimmy_srv::JimmyString :md5sum-) "fb3f80be0569f2704f76fceeb9b36238")
(setf (get jimmy_srv::JimmyString :datatype-) "jimmy_srv/JimmyString")
(setf (get jimmy_srv::JimmyString :definition-)
      "# Integration test message
# caller_id of most recent node to send this message
#string caller_id
string PatrolCmd
# caller_id of the original node to send this message
string orig_caller_id
string data

")



(provide :jimmy_srv/JimmyString "fb3f80be0569f2704f76fceeb9b36238")


