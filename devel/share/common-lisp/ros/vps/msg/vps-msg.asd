
(cl:in-package :asdf)

(defsystem "vps-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pathDetails" :depends-on ("_package_pathDetails"))
    (:file "_package_pathDetails" :depends-on ("_package"))
  ))