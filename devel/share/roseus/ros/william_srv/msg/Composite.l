;; Auto-generated. Do not edit!


(when (boundp 'william_srv::Composite)
  (if (not (find-package "WILLIAM_SRV"))
    (make-package "WILLIAM_SRV"))
  (shadow 'Composite (find-package "WILLIAM_SRV")))
(unless (find-package "WILLIAM_SRV::COMPOSITE")
  (make-package "WILLIAM_SRV::COMPOSITE"))

(in-package "ROS")
;;//! \htmlinclude Composite.msg.html


(defclass william_srv::Composite
  :super ros::object
  :slots (_a _b ))

(defmethod william_srv::Composite
  (:init
   (&key
    ((:a __a) (instance william_srv::CompositeA :init))
    ((:b __b) (instance william_srv::CompositeB :init))
    )
   (send-super :init)
   (setq _a __a)
   (setq _b __b)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:serialization-length
   ()
   (+
    ;; william_srv/CompositeA _a
    (send _a :serialization-length)
    ;; william_srv/CompositeB _b
    (send _b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; william_srv/CompositeA _a
       (send _a :serialize s)
     ;; william_srv/CompositeB _b
       (send _b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; william_srv/CompositeA _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;; william_srv/CompositeB _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;;
   self)
  )

(setf (get william_srv::Composite :md5sum-) "d8fb6eb869ad3956b50e8737d96dc9fa")
(setf (get william_srv::Composite :datatype-) "william_srv/Composite")
(setf (get william_srv::Composite :definition-)
      "# composite message. required for testing import calculation in generators
CompositeA a
CompositeB b

================================================================================
MSG: william_srv/CompositeA
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: william_srv/CompositeB
# copy of geometry_msgs/Point for testing
float64 x
float64 y
float64 z

")



(provide :william_srv/Composite "d8fb6eb869ad3956b50e8737d96dc9fa")


