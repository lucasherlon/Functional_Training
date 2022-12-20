(def numero 
    (read-string(read-line)))

(defn fatorial [n]
    (if (= n 0) 
        1
        (* n (fatorial (dec n)))))

(println (fatorial numero))