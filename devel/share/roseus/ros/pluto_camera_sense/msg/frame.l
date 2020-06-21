;; Auto-generated. Do not edit!


(when (boundp 'pluto_camera_sense::frame)
  (if (not (find-package "PLUTO_CAMERA_SENSE"))
    (make-package "PLUTO_CAMERA_SENSE"))
  (shadow 'frame (find-package "PLUTO_CAMERA_SENSE")))
(unless (find-package "PLUTO_CAMERA_SENSE::FRAME")
  (make-package "PLUTO_CAMERA_SENSE::FRAME"))

(in-package "ROS")
;;//! \htmlinclude frame.msg.html


(defclass pluto_camera_sense::frame
  :super ros::object
  :slots (_frameBuffer _frameSize _iframe ))

(defmethod pluto_camera_sense::frame
  (:init
   (&key
    ((:frameBuffer __frameBuffer) (make-array 0 :initial-element 0 :element-type :char))
    ((:frameSize __frameSize) 0)
    ((:iframe __iframe) nil)
    )
   (send-super :init)
   (setq _frameBuffer __frameBuffer)
   (setq _frameSize (round __frameSize))
   (setq _iframe __iframe)
   self)
  (:frameBuffer
   (&optional __frameBuffer)
   (if __frameBuffer (setq _frameBuffer __frameBuffer)) _frameBuffer)
  (:frameSize
   (&optional __frameSize)
   (if __frameSize (setq _frameSize __frameSize)) _frameSize)
  (:iframe
   (&optional __iframe)
   (if __iframe (setq _iframe __iframe)) _iframe)
  (:serialization-length
   ()
   (+
    ;; uint8[] _frameBuffer
    (* 1    (length _frameBuffer)) 4
    ;; uint32 _frameSize
    4
    ;; bool _iframe
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _frameBuffer
     (write-long (length _frameBuffer) s)
     (princ _frameBuffer s)
     ;; uint32 _frameSize
       (write-long _frameSize s)
     ;; bool _iframe
       (if _iframe (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _frameBuffer
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _frameBuffer (make-array n :element-type :char))
     (replace _frameBuffer buf :start2 ptr-) (incf ptr- n))
   ;; uint32 _frameSize
     (setq _frameSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _iframe
     (setq _iframe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pluto_camera_sense::frame :md5sum-) "6a745da853457763b31d9f94e2f97135")
(setf (get pluto_camera_sense::frame :datatype-) "pluto_camera_sense/frame")
(setf (get pluto_camera_sense::frame :definition-)
      "uint8[] frameBuffer
uint32 frameSize
bool iframe

")



(provide :pluto_camera_sense/frame "6a745da853457763b31d9f94e2f97135")


