import Text.Printf

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n-1)

main :: IO ()
main = do
    num' <- getLine
    let num = read num' :: Integer
    let fat = fatorial num
    
    putStrLn $ printf "%d" fat