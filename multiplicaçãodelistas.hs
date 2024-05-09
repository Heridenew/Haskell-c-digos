-- Edenn Weslley dos Santos Silva
-- 08/05/2024
-- Código em Haskell que recebe duas listas e multiplica o valor entre elas

-- Função principal
mul2 :: [Int] -> [Int] -> [Int]
mul2 [] [] = []
mul2 (x:xs) (y:ys) = x * y : mul2 xs ys
mul2 (x:xs) [] = x * 0 : mul2 xs []
mul2 [] (y:ys) = y * 0 : mul2 [] ys

main = do
    sa <- getLine
    let a = read sa :: [Int]
    sb <- getLine
    let b = read sb :: [Int]
    let result = mul2 a b
    print result