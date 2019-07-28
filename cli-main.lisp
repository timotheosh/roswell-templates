;;;; {{name}}.lisp

(in-package #:{{name}})

(defun greeting (name)
  (format t "Hello, ~A!~%" name))

(defun -main()
  (greeting "world"))
