
(cl:in-package :asdf)

(defsystem "jimmy_srv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Composite" :depends-on ("_package_Composite"))
    (:file "_package_Composite" :depends-on ("_package"))
    (:file "CompositeA" :depends-on ("_package_CompositeA"))
    (:file "_package_CompositeA" :depends-on ("_package"))
    (:file "CompositeB" :depends-on ("_package_CompositeB"))
    (:file "_package_CompositeB" :depends-on ("_package"))
    (:file "JimmyString" :depends-on ("_package_JimmyString"))
    (:file "_package_JimmyString" :depends-on ("_package"))
    (:file "Test" :depends-on ("_package_Test"))
    (:file "_package_Test" :depends-on ("_package"))
    (:file "TestArrays" :depends-on ("_package_TestArrays"))
    (:file "_package_TestArrays" :depends-on ("_package"))
    (:file "TestHeader" :depends-on ("_package_TestHeader"))
    (:file "_package_TestHeader" :depends-on ("_package"))
    (:file "TestPrimitives" :depends-on ("_package_TestPrimitives"))
    (:file "_package_TestPrimitives" :depends-on ("_package"))
    (:file "TestString" :depends-on ("_package_TestString"))
    (:file "_package_TestString" :depends-on ("_package"))
  ))