-- A function to return maximum value of knapsack
knapsack c [] [] = 0
knapsack c (x:xs) (y:ys) | c >= x = let (a, b) = ( y + knapsack (c-x) xs ys , knapsack c xs ys)
							 	   in max a b
knapsack c (x:xs) (y:ys) | otherwise = knapsack c xs ys