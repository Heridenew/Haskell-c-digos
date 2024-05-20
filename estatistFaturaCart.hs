min :: Double
min = 1000000000000

max :: Double
max = 0

flag1 :: Bool
flag1 = False

flag2 :: Bool
flag2 = False


-- Função que encontra um número em uma string
encontrarNum :: String -> Double
encontrarNum [] = 0
encontrarNum str = read str :: Double 

-- Função que calcula o mínimo e o máximo dos números encontrados em uma string
minMaxCartao :: String -> (Double, Double)
minMaxCartao [] = (0, 0)
minMaxCartao str = (minimum nums, maximum nums)
  where
    nums = map encontrarNum (words str)
    minimo = minimum nums
    maximo = maximum nums

main = do
    a <- getLine
    let result = minMaxCartao a
    print result