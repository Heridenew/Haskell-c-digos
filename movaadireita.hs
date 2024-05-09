-- Edenn Weslley dos Santos Silva
-- 08/05/2024
-- Código em Haskell que recebe um inteiro e uma string e move a string o número de inteiros
-- Para a direita

-- Função que faz a concatenação
addEspacos :: Int -> String
addEspacos 0 = ""
addEspacos n = " " ++ addEspacos (n-1)

-- Função que recebe um inteiro e uma string
paraDireita :: Int -> String -> String
paraDireita n word = addEspacos n ++ word

parseInput str = let [n, s] = words str
                 in (read n, s)
main :: IO()
main = interact $ uncurry paraDireita . parseInput