myLast [] = error "Empty List has no last"
myLast [x] = x
myLast (x:xs) = myLast xs