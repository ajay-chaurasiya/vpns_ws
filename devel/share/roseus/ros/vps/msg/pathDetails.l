;; Auto-generated. Do not edit!


(when (boundp 'vps::pathDetails)
  (if (not (find-package "VPS"))
    (make-package "VPS"))
  (shadow 'pathDetails (find-package "VPS")))
(unless (find-package "VPS::PATHDETAILS")
  (make-package "VPS::PATHDETAILS"))

(in-package "ROS")
;;//! \htmlinclude pathDetails.msg.html


(defclass vps::pathDetails
  :super ros::object
  :slots (_oldX _oldY _newX _newY _oldAngle _newAngle _destX _destY _text ))

(defmethod vps::pathDetails
  (:init
   (&key
    ((:oldX __oldX) 0)
    ((:oldY __oldY) 0)
    ((:newX __newX) 0)
    ((:newY __newY) 0)
    ((:oldAngle __oldAngle) 0)
    ((:newAngle __newAngle) 0)
    ((:destX __destX) 0)
    ((:destY __destY) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _oldX (round __oldX))
   (setq _oldY (round __oldY))
   (setq _newX (round __newX))
   (setq _newY (round __newY))
   (setq _oldAngle (round __oldAngle))
   (setq _newAngle (round __newAngle))
   (setq _destX (round __destX))
   (setq _destY (round __destY))
   (setq _text (string __text))
   self)
  (:oldX
   (&optional __oldX)
   (if __oldX (setq _oldX __oldX)) _oldX)
  (:oldY
   (&optional __oldY)
   (if __oldY (setq _oldY __oldY)) _oldY)
  (:newX
   (&optional __newX)
   (if __newX (setq _newX __newX)) _newX)
  (:newY
   (&optional __newY)
   (if __newY (setq _newY __newY)) _newY)
  (:oldAngle
   (&optional __oldAngle)
   (if __oldAngle (setq _oldAngle __oldAngle)) _oldAngle)
  (:newAngle
   (&optional __newAngle)
   (if __newAngle (setq _newAngle __newAngle)) _newAngle)
  (:destX
   (&optional __destX)
   (if __destX (setq _destX __destX)) _destX)
  (:destY
   (&optional __destY)
   (if __destY (setq _destY __destY)) _destY)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int32 _oldX
    4
    ;; int32 _oldY
    4
    ;; int32 _newX
    4
    ;; int32 _newY
    4
    ;; int32 _oldAngle
    4
    ;; int32 _newAngle
    4
    ;; int32 _destX
    4
    ;; int32 _destY
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _oldX
       (write-long _oldX s)
     ;; int32 _oldY
       (write-long _oldY s)
     ;; int32 _newX
       (write-long _newX s)
     ;; int32 _newY
       (write-long _newY s)
     ;; int32 _oldAngle
       (write-long _oldAngle s)
     ;; int32 _newAngle
       (write-long _newAngle s)
     ;; int32 _destX
       (write-long _destX s)
     ;; int32 _destY
       (write-long _destY s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _oldX
     (setq _oldX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _oldY
     (setq _oldY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _newX
     (setq _newX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _newY
     (setq _newY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _oldAngle
     (setq _oldAngle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _newAngle
     (setq _newAngle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _destX
     (setq _destX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _destY
     (setq _destY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vps::pathDetails :md5sum-) "88795057299c09e1b94f01119118c950")
(setf (get vps::pathDetails :datatype-) "vps/pathDetails")
(setf (get vps::pathDetails :definition-)
      "int32 oldX
int32 oldY
int32 newX
int32 newY
int32 oldAngle
int32 newAngle
int32 destX
int32 destY
string text

")



(provide :vps/pathDetails "88795057299c09e1b94f01119118c950")


