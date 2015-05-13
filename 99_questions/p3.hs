elementAt [] k = error "Empty List"
elementAt (x:xs) k | k < 1 = error "Invalid Index"
elementAt [x] k | k > 1 = error "List has fewer elements"
elementAt (x:xs) 1 = x
elementAt (x:xs) k = elementAt xs (k-1)