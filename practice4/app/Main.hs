module Main where

import Lib

--ラムダ式

add = \x y -> x + y

a = 1
b = \x -> x + 1

--高階関数
{-引数に関数を受け取ったり、戻り値として関数を返したりする関数-}

f g = g 2 3
add' x y = x + y
mul = \x y -> x * y

add'' x = \y -> x + y

--カリー化
{-引数を1つずつ分割して関数をネストさせること-}

addd x y = x + y
addd' x = \y -> x + y
addd'' = \x -> \y -> x + y 

main :: IO ()
main = someFunc
