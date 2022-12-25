import Text.Printf

main :: IO ()
main = do
      r' <- getLine
      let r = read r' :: Double
      let area = 3.14159 * r ^ 2

      putStrLn $ printf "A=%.4f" area