(def A (read-string(read-line)))
(def B (read-string(read-line)))

(defn media 
  [a b] 
  (/ (+ (* a 3.5) (* b 7.5)) 11))

(printf "MEDIA = %.5f", (media A B))