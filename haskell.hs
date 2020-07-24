
--1
div_by_3 (x:xs) = [x| x <- x:xs ,(mod x 3) == 0]

--2
-- second way div_by_2 (x:xs) | not (null xs) && (mod x 2) == 0 = x:(div_by_2 xs) | not(null xs) && not((mod x 2)) == 0)  =  div_by_2 xs | null xs && (mod x 2) == 0 = x:[] | otherwise = []
div_by_2 (x:xs) | not (null xs) && (mod x 2) == 0 = x:(div_by_2 xs) | not(null xs) && not(x `mod` 2 == 0)  =  div_by_2 xs | null xs && x `mod` 2 == 0 = x:[] | otherwise = []

--3
count elem xs  = length( [ elem | x<- xs , x ==elem ])

--4
triple (x:xs) = map(*3) (x:xs)

--5
sort n1 n2 n3 | n1<=n2 && n1<=n3 && n2<=n3 = n1:n2:n3:[] | n1<=n2 && n1<=n3 && n3<=n2 = n1:n3:n2:[] | n2<=n1 && n2<=n3 && n1<=n3 = n2:n1:n3:[] | n2<=n1 && n2<=n3 && n3<=n1 = n2:n3:n1:[] | n3<=n1 && n3<=n2 && n1<=n2 = n3:n1:n2:[] | n3<=n1 && n3<=n2 && n2<=n1 = n3:n2:n1:[]

--6
from_to n m (x:xs) = drop (n-1) (take m (x:xs))

--7
nth_element n (x:xs) |not(null xs) && n== 1 = x | n>1 = nth_element (n-1) xs

--8
mth_element m xs= head(drop (m-1) xs )

--9
add_lists (x:xs) (y:ys)   |length xs >0 && length ys >0 = (x+y) : (add_lists xs ys) |length xs > 0 && length ys == 0  = (x+y) : (add_lists xs [0]) |length xs == 0 && length ys >0 = (x+y) : (add_lists [0] ys) |otherwise = (x + y) : []
-- second way add_lists (x:xs) (y:ys)   |not (null xs) && not (null ys) = (x+y) : (add_lists xs ys) |not (null xs) && null ys  = (x+y) : (add_lists xs [0])  |null xs && not (null ys) = (x+y) : (add_lists [0] ys) |otherwise = (x + y) : []

--10
classify n |n >= 90 = "A" | n>=70 && n<=89 = "B" | n>= 50 && n<=69 = "C" | otherwise = "D"
