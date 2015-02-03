split [] = ([],[])
split [x] = ([x], [])
split (x:y:zs) = let (xs,ys) = split zs
                 in (x:xs, y:ys)

merge [] [] = []
merge x  [] = x
merge [] y  = y
merge (x:xs) (y:ys) | x > y = [y] ++ (merge (x:xs) ys)
		    | otherwise = [x] ++ (merge xs (y:ys) )

merge_sort [] = []
merge_sort [x] = [x]
merge_sort zs = let (xs,ys) = split zs
		in merge (merge_sort xs) (merge_sort ys)

