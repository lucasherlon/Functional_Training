import Text.Printf

main :: IO ()
main = do
    time' <- getLine
    vel'  <- getLine

    let time = read time' :: Double
    let vel = read vel' :: Double
    let spent = (time * vel) / 12 :: Double
    
    putStrLn $ printf "%.3f" spent
    