module Main where

import Lib

-- 1. リストを半分に分ける関数を実装
halve :: [a] -> ([a], [a])
halve xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)

{-- 2. safetail :: [a] -> [a]を実装
    a. 条件式
    b. ガード付きの等式
    c. パターンマッチ
--}

-- a
safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

-- b
safetail' :: [a] -> [a]
safetail' xs | null xs = []
            | otherwise = tail xs

-- c
safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs

-- 3. 
myOr :: Bool -> Bool -> Bool
myOr True _ = True
myOr _ True = True
myOr False False = False

myOr2 :: Bool -> Bool -> Bool
myOr2 x y
    | x == True = True
    | y == True = True
    | x == y, x == False = False

myOr3 :: Bool -> Bool -> Bool
myOr3 x y = 
        if x == True
        then True
        else if y == True
        then True
        else False

-- 4.条件式を用いて論理積を定義
myAnd :: Bool -> Bool -> Bool
myAnd x y =
        if x == False
        then False
        else if y == False
        then False
        else True

-- 5.カリー化された関数 mult x y z = x * y * z はλ式を用いるとどのように表すことができるのか。

-- カリー化：すべての関数は部分適用により、最終的に1つの引数しかとらない。
carryEx x y z = x + y + z
a x y = carryEx x y 1
b x = a x 1

-- λ式：無名関数
lambda = \x y -> x + y

-- 解
mult = \x -> (\y -> (\z -> x * y * z))

main :: IO ()
main = someFunc
