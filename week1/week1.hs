--BASIC TYPES:
-- Int, Integer, Double, Bool, Char, String


--Try evaluating each of the following expressions in GHCi:
-- 2.35 * 8.6
-- 8.7 / 3.1
-- mod 19 3
-- 19 `mod` 3
-- 7 ^ 222
-- (-3) * (-7)
-- ('a' == 'a')
-- (16 /= 3)
-- (5 > 3) && ('p' <= 'q')
-- "Haskell" > "C++"


--Defining basic functions
-- Compute the sum of the integers from 1 to n.
myBool :: Int -> Bool
myBool 1 = True
myBool _ = False

isEven :: Integer -> Bool
isEven n
  | n `mod` 2 == 0 = True
  | otherwise      = False


--Pairs
sumPair :: (Int,Int) -> Int
sumPair (x,y) = x + y


f :: Int -> Int -> Int -> Int
f x y z = x + y + z

--f 3 17 8


--Lists

--[1,2,3,19]
--[1..100]
--[2,4..100]

-- hello1 and hello2 are exactly the same.

hello1 :: [Char]
hello1 = ['h', 'e', 'l', 'l', 'o']

hello2 :: String
hello2 = "hello"


--Constructing lists

-- 1 : []
-- 3 : (1 : [])
-- 2 : 3 : 4 : []
-- [2,3,4] == 2 : 3 : 4 : []


-- Compute the length of a list of Integers.
intListLength :: [Integer] -> Integer
intListLength []     = 0
intListLength (x:xs) = 1 + intListLength xs



sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = []     -- Do nothing to the empty list
sumEveryTwo (x:[])     = [x]    -- Do nothing to lists with a single element
sumEveryTwo (x:(y:zs)) = (x + y) : sumEveryTwo zs


