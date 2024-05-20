-- Edenn Weslley dos Santos Silva
-- 08/05/2024
-- Código em Haskell que faz uma soma dentro de uma lista

maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar xs = maquinaSomar' xs []
  where
    maquinaSomar' [] acc = acc
    maquinaSomar' (0:0:_) acc = acc  -- sequência 0,0 encontrada, encerra a computação
    maquinaSomar' (x:xs) acc
      | x == 0 = maquinaSomar' xs acc
      | otherwise =
        let (soma, rest) = span (/= 0) xs
        in maquinaSomar' rest (acc ++ [x + sum soma])

main :: IO ()
main = do
  lista <- getLine
  print $ maquinaSomar (read lista :: [Int])
