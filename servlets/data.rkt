#lang racket

; ʵ�ֹ��ܣ� ά�� ������json �ļ��� relation / karma
; ��relation karma �� �ļ��ж�ȡ���ڴ�
; ������Ϣ���ļ���
;


(require json
         racket/file)

(provide (all-defined-out))

; file-path -> js-expr
(define (read-json-from-file file-path)
  (string->jsexpr (file->string file-path)))

; write js-expression into a file
(define (write-json-to-file file-path js-expr)
  (call-with-output-file file-path
    (lambda (out)
      (write (jsexpr->string js-expr) out))
    #:exists 'replace))



;;--------------------------------------------------------------;;
;; relation
;;--------------------------------------------------------------;;

(define relation-path "data/relation.json")

(define RELATION (read-json-from-file relation-path))

(define (update-relation js-expr)
  (set! RELATION js-expr)
  (write-json-to-file karma-path RELATION))



;;--------------------------------------------------------------;;
;; karma
;;--------------------------------------------------------------;;

(define karma-path "data/karma.json")

(define KARMA (read-json-from-file karma-path))

(define (update-karma js-expr)
  (set! KARMA js-expr)
  (write-json-to-file karma-path KARMA))
