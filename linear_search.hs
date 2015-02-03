linear_search [] k = []
linear_search (x:xs) k | x==k  = [x] ++ (linear_search xs k)
		       | otherwise = linear_search xs k

