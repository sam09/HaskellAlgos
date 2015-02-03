insertion_sort [] = []

insertion_sort (x:xs) = insert x (insertion_sort xs)

insert x [] = [x]
insert x (y:ys) | y < x = [y] ++  insert x ys
		| otherwise = [x,y] ++ ys
