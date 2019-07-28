(DEFPACKAGE :ROSWELL.INIT.CLI
  (:USE :CL))
(IN-PACKAGE :ROSWELL.INIT.CLI)
(DEFVAR *PARAMS*
  '(:FILES
    ((:NAME "cli-build.sh" :METHOD "djula" :REWRITE "{{ name }}/build.sh")
     (:NAME "cli-main.lisp" :METHOD "djula" :REWRITE
      "{{ name }}/{{ name }}.lisp")
     (:NAME "cli-package.lisp" :METHOD "djula" :REWRITE
      "{{ name }}/package.lisp")
     (:NAME "cli-asd.asd" :METHOD "djula" :REWRITE
      "{{ name }}/{{ name }}.asd"))))
(DEFUN CLI (_ &REST R)
  (ASDF/OPERATE:LOAD-SYSTEM :ROSWELL.UTIL.TEMPLATE :VERBOSE NIL)
  (FUNCALL (READ-FROM-STRING "roswell.util.template:template-apply") _ R
           *PARAMS*))
