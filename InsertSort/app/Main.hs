module Main where

import Lib

insert x [] = [x]
insert x (y:ys)
    | x < y     = x:y:ys
    | otherwise = y : insert x ys

isort []    = []
isort (x:xs) = insert x (isort xs)


{-リスト内包表記を使った階乗-}
fact 0 = 1
fact n | n > 0 = n * fact(n - 1)

main :: IO ()
main = someFunc
