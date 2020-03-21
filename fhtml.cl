;; fhtml -- functional html
;; v0.3
;; 21.03.2020
;; by ASZ

(defun list-to-string (lst)
    (format nil "~{~A~}" lst))

(defun doc (&rest tags) 
  (format t "<!DOCTYPE HTML>~%<html>~%~a</html>" (list-to-string tags)))

(defun tag (name attr &rest val)
  (format nil "<~a ~a>~%~a~%</~a>" name attr (list-to-string val) name))

(defun head (attr &rest val)
  (tag "head" attr (list-to-string val)))

(defun title (&rest val)
  (tag "title" "" (list-to-string val)))

(defun body (attr &rest val)
  (tag "body" attr (list-to-string val)))

(defun p (attr &rest val)
  (tag "p" attr (list-to-string val)))

(defun hr ()
  (format nil "<hr/>~%"))

(defun br ()
  (format nil "<br/>~%"))

(defun h (level attr &rest val)
  (format nil "<h~d ~a>~a</h~d>~%" level attr (list-to-string val) level))

(defun b (attr &rest val)
  (tag "b" attr (list-to-string val)))

(defun strong (attr &rest val)
  (tag "strong" attr (list-to-string val)))

(doc 
  (head "" (title "FHTML"))
  (body "" (h 1 "" "FHTML page")
		(hr)
		(b "" "fhtml -- functional html") (br)
		(strong "" "This is a miniature library for automatic site layout, written in Common LISP. Each tag is a function that can accept a variable number of arguments, including other function tags.")
		(p "" "Example" (br) (tag "code" "style=\"color:red\"" "(doc (head \"\" (title \"Example\")) (body \"\" (p \"\" \"This is example\")))")))
) 
