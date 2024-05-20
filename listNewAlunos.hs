-- Edenn Weslley dos Santos Silva
-- 08/05/2024

bSort :: [String] -> [String]
bSort [] = []
bSort xs = aux xs (length xs)

aux :: [String] -> Int -> [String]
aux xs 0 = xs
aux xs n = aux (bb xs) (n - 1)

bb :: [String] -> [String]
bb (x:y:xs)
  | x > y     = y : bb (x:xs)
  | otherwise = x : bb (y:xs)
bb xs = xs

main :: IO ()
main = do
    a <- getLine
    let result = bSort (read a :: [String])
    print result
