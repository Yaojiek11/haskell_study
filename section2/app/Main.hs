module Main where

import Lib

--1 次の式に括弧をつけよ
-- 2^3+4
-- 2*3+4*5
-- 2+3*4^5

--2 省略

-- 便利な関数
-- head xs : 空でないリストの先頭を取り出す
-- tail xs : 空でないリストの先頭の要素を取り除く
-- xs !! n : リストの先頭(0)からn番目の要素を取り出す
-- take n xs : リストの先頭からn個の要素を取り出す
-- drop n xs : リストの先頭からn個の要素を取り除く
-- length xs : リストの長さ(要素数)を計算する
-- sum xs, product xs : リストの和/積を計算する
-- xs ++ ys : リストを結合する
-- reverse xs : リスト反転

--3 以下のプログラムにはエラーが3つある
{--N = a 'div' length xs
    where
         a = 10
        xs = [1,2,3,4,5]--}

-- 正
-- n = a `div` $ length xs
n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

--4 空でないリストの最後の要素を取り出す関数lastを定義せよ
last' [x] = x
last' xs = last' $ tail xs

--5 initの実装
init' [x] = []
init' (x:xs) = x : init' xs

init'' [x] = []
init'' xs = (head xs) : init'' (tail xs)

main :: IO ()
main = someFunc
