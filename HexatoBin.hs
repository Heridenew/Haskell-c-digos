-- Edenn Weslley dos Santos Silva
-- 08/05/2024
-- Código em Haskell que recebe um hexadecimal e converte para binário


-- Biblioteca
hexToBi :: Char -> String
hexToBi '0' = "0000"
hexToBi '1' = "0001"
hexToBi '2' = "0010"
hexToBi '3' = "0011"
hexToBi '4' = "0100"
hexToBi '5' = "0101"
hexToBi '6' = "0110"
hexToBi '7' = "0111"
hexToBi '8' = "1000"
hexToBi '9' = "1001"
hexToBi 'A' = "1010"
hexToBi 'B' = "1011"
hexToBi 'C' = "1100"
hexToBi 'D' = "1101"
hexToBi 'E' = "1110"
hexToBi 'F' = "1111"

htob :: String -> String
htob [] = ""
htob (x:xs) = hexToBi x ++ htob xs

main :: IO ()
main = do
    s <- getLine
    let result = htob s    
    print result
