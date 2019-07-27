(DEFPACKAGE :ROSWELL.INIT.CLI
  (:USE :CL))
(IN-PACKAGE :ROSWELL.INIT.CLI)
(DEFVAR *PARAMS*
  '(:FILES
    ((:NAME "build.sh" :METHOD "djula" :REWRITE "{{ name }}/build.sh")
     (:NAME "cli.lisp" :METHOD "djula" :REWRITE "{{ name }}/{{ name }}.lisp")
     (:NAME "package.lisp" :METHOD "djula" :REWRITE "{{ name }}/package.lisp")
     (:NAME "cli.asd" :METHOD "djula" :REWRITE "{{ name }}/{{ name }}.asd"))))
(DEFUN CLI (_ &REST R)
  (ASDF/OPERATE:LOAD-SYSTEM :ROSWELL.UTIL.TEMPLATE :VERBOSE NIL)
  (FUNCALL (READ-FROM-STRING "roswell.util.template:template-apply") _ R
           *PARAMS*))
