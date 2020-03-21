;; fhtml -- functional html
;; v0.3
;; 21.03.2020
;; by ASZ

(defun list-to-string (lst)
    (format nil "~{~A~}" lst))

(defun doc (&rest tags) 
  (format t "<!DOCTYPE HTML>~%<html>~%~a</html>" (list-to-string tags)))

(defun tag (name &rest val)
  (format nil "<~a>~%~a~%</~a>~%" name (list-to-string val) name))

(defun head (&rest val)
  (format nil "<head>~%~a</head>~%" (list-to-string val)))

(defun title (&rest val)
  (format nil "<title>~a</title>~%" (list-to-string val)))

(defun body (&rest val)
  (format nil "<body>~%~a</body>~%" (list-to-string val)))

(defun p (&rest val)
  (format nil "<p>~%~a</p>~%" (list-to-string val)))

(defun hr ()
  (format nil "<hr/>~%"))

(defun br ()
  (format nil "<br/>~%"))

(defun h (level &rest val)
  (format nil "<h~d>~a</h~d>~%" level (list-to-string val) level))

(defun b (&rest val)
  (format nil "<b>~a</b>~%" (list-to-string val)))

(defun strong (&rest val)
  (format nil "<strong>~a</strong>~%" (list-to-string val)))

(doc 
  (head (title "FHTML"))
  (body (h 1 "FHTML page")
		(hr)
		(b "fhtml -- functional html") (br)
		(strong "This is a miniature library for automatic site layout, written in Common LISP. Each tag is a function that can accept a variable number of arguments, including other function tags.")
		(p "Example" (br) (tag "code" "(doc (head (title \"Example\")) (body (p \"This is example\")))")))
) 
