(module fortunedb mzscheme
  (require (lib "list.ss"))
  (provide (all-defined))
  
  (define fortunedb:empty empty)
  
  (define (fortunedb-choose fdb)
    (list-ref fdb (random (length fdb))))
  
  (define (fortunedb-load path)
    (with-handlers ([exn:fail? (lambda (e) fortunedb:empty)])
      (call-with-input-file path read))))