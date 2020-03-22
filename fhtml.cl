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

(defun a (attr &rest val)
  (tag "a" attr (list-to-string val)))

(defun abbr (attr &rest val)
  (tag "abbr" attr (list-to-string val)))

(defun acronym (attr &rest val)
  (tag "acronym" attr (list-to-string val)))

(defun address (attr &rest val)
  (tag "address" attr (list-to-string val)))

(defun area (attr &rest val)
  (tag "area" attr (list-to-string val)))

(defun article (attr &rest val)
  (tag "article" attr (list-to-string val)))

(defun aside (attr &rest val)
  (tag "aside" attr (list-to-string val)))

(defun audio (attr &rest val)
  (tag "audio" attr (list-to-string val)))

(defun base (attr &rest val)
  (tag "base" attr (list-to-string val)))

(defun bdo (attr &rest val)
  (tag "bdo" attr (list-to-string val)))

(defun big (attr &rest val)
  (tag "big" attr (list-to-string val)))

(defun blockquote (attr &rest val)
  (tag "blockquote" attr (list-to-string val)))

(defun button (attr &rest val)
  (tag "button" attr (list-to-string val)))

(defun canvas (attr &rest val)
  (tag "canvas" attr (list-to-string val)))

(defun caption (attr &rest val)
  (tag "caption" attr (list-to-string val)))

(doc 
  (head "" (title "FHTML"))
  (body "bgcolor=black" (h 1 "style=\"color:cyan\"" "FHTML page")
		(hr)
		(b "style=\"color:white\"" "fhtml -- functional html") (br)
		(strong "style=\"color:white\"" "This is a miniature library for automatic site layout, written in Common LISP. Each tag is a function that can accept a variable number of arguments, including other function tags.")
		(p "style=\"color:white\"" "Example" (br) (tag "code" "style=\"color:white\"" "(doc (head \"\" (title \"Example\")) (body \"\" (p \"\" \"This is example\")))")))
) 
