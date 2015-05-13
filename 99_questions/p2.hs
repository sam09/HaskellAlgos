mySecondLast [] = error "Empty List has no second last"
mySecondLast [x] = error "Single element List has no second last"
mySecondLast [x,y] = x
mySecondLast (x:xs) = mySecondLast xs