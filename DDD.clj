(def DDD (read-string (read-line)))
(def mapa
  {61 "Brasilia"
   71 "Salvador"
   11 "Sao Paulo"
   21 "Rio de Janeiro"
   32 "Juiz de Fora"
   19 "Campinas"
   27 "Vitoria"
   31 "Belo Horizonte"})

(def resp (get mapa DDD))

(if (not= resp nil)
  (println resp)
  (println "DDD nao cadastrado"))