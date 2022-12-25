import Text.Printf

main :: IO ()
main = do
      a' <- getLine
      b' <- getLine
      let a = read a' :: Double
      let b = read b' :: Double
      let average = ((a * 3.5) + (b * 7.5)) / 11

      putStrLn $ printf "MEDIA = %.5f" average