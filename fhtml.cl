;; fhtml -- functional html
;; v0.2
;; 21.03.2020
;; by ASZ

(defun list-to-string (lst)
    (format nil "~{~A~}" lst))

(defun doc (&rest tags) 
  (format t "<!DOCTYPE HTML>~%<html>~%~a</html>" (list-to-string tags)))

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

(doc 
  (head (title "TestPage"))
  (body (h 1 "test page")
		(hr))
) 
