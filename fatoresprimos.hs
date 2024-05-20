fatoresPrimos :: Integer -> [Integer]
fatoresPrimos n = fatorar n 2
  where
    fatorar 1 _ = []
    fatorar num divisor
      | num `mod` divisor == 0 = divisor : fatorar (num `div` divisor) divisor
      | otherwise              = fatorar num (divisor + 1)

main :: IO ()
main = do
    putStrLn "Digite um número para decompor em fatores primos:"
    input <- getLine
    let numero = read input :: Integer
    let result = fatoresPrimos numero
    putStrLn ("Os fatores primos são: " ++ show result)