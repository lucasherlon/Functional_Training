ddd :: Integer -> String
ddd n
    | n == 61 = "Brasilia"
    | n == 71 = "Salvador"
    | n == 11 = "Sao Paulo"
    | n == 21 = "Rio de Janeiro"
    | n == 32 = "Juiz de Fora"
    | n == 19 = "Campinas"
    | n == 27 = "Vitoria"
    | n == 31 = "Belo Horizonte"
    | otherwise = "DDD nao cadastrado"

main :: IO ()
main = do
    num' <- getLine
    let num = read num' :: Integer
    putStrLn $ ddd num