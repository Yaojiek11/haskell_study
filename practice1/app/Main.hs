module Main where

import Lib

-- フィボナッチ
fibo 0 = 0
fibo 1 = 1
-- fibo 5 = 2 + 3 = fibo 3 + fibo 4
fibo n = fibo(n-2) + fibo(n-1)

-- ガード：1つの関数定義に引数の条件を列挙する
fact n
    | n==0      =0
    | n==1      =1
    | otherwise = fact(n-2) + fact(n-1)

fact' 0 = 1
fact' n | n > 0 = n * fact'(n-1)

--　case -of
fact'' n = case n of
    0 -> 1
    _ | n > 0 -> n * fact''(n-1)

-- リスト内包表記
func 0 = 1
func n | n > 0 = n * func(n - 1)

-- 組み合わせ
main :: IO ()
main = do
    print[(x, y) | x <- [1..3], y <- "abc"]
    -- 直角三角形
    print[(a, b, c)
         | a <- [1..20], b <- [1..20], c <- [1..20]
         , a*a + b*b == c*c
         ]


   


