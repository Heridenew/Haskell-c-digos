-- Edenn Weslley dos Santos Silva
-- 08/05/2024
-- Código em Haskell que faz uma soma dentro de uma lista

flag :: Bool
flag = False

-- Função que verifica os valores da lista e soma os valores que estão entre dois "0"
maquinaSomar :: [Int] -> Int
maquinaSomar [] = 0
maquinaSomar (0:0:_) = 0  
maquinaSomar (x:xs)
    | x == 0 && flag == True = x
    | otherwise = x + maquinaSomar xs  
    where
        flag = True


main = do
    lista <- getLine
    print $ maquinaSomar (read lista :: [Int])
