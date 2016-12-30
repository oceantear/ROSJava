;; Auto-generated. Do not edit!


(when (boundp 'jimmy_srv::TestString)
  (if (not (find-package "JIMMY_SRV"))
    (make-package "JIMMY_SRV"))
  (shadow 'TestString (find-package "JIMMY_SRV")))
(unless (find-package "JIMMY_SRV::TESTSTRING")
  (make-package "JIMMY_SRV::TESTSTRING"))

(in-package "ROS")
;;//! \htmlinclude TestString.msg.html


(defclass jimmy_srv::TestString
  :super ros::object
  :slots (_caller_id _orig_caller_id _data ))

(defmethod jimmy_srv::TestString
  (:init
   (&key
    ((:caller_id __caller_id) "")
    ((:orig_caller_id __orig_caller_id) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _caller_id (string __caller_id))
   (setq _orig_caller_id (string __orig_caller_id))
   (setq _data (string __data))
   self)
  (:caller_id
   (&optional __caller_id)
   (if __caller_id (setq _caller_id __caller_id)) _caller_id)
  (:orig_caller_id
   (&optional __orig_caller_id)
   (if __orig_caller_id (setq _orig_caller_id __orig_caller_id)) _orig_caller_id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _caller_id
    4 (length _caller_id)
    ;; string _orig_caller_id
    4 (length _orig_caller_id)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _caller_id
       (write-long (length _caller_id) s) (princ _caller_id s)
     ;; string _orig_caller_id
       (write-long (length _orig_caller_id) s) (princ _orig_caller_id s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _orig_caller_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orig_caller_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jimmy_srv::TestString :md5sum-) "334ff4377be93faa44ebc66d23d40fd3")
(setf (get jimmy_srv::TestString :datatype-) "jimmy_srv/TestString")
(setf (get jimmy_srv::TestString :definition-)
      "# Integration test message
# caller_id of most recent node to send this message
string caller_id
# caller_id of the original node to send this message
string orig_caller_id
string data

")



(provide :jimmy_srv/TestString "334ff4377be93faa44ebc66d23d40fd3")


