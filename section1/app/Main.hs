module Main where

import Lib

--1. double (double 2) の結果を算出するほかの計算方法
--関数定義
--関数名　引数　= 内容　Ex. f x = x + 1
double x = x + x
--double (double x) = x + x + x + x
double' x = x * 4

--2. xの値にかかわらずsum[x] = xであることを示せ

--パターンマッチ：条件にあった結果を返す
--関数名　値1 = 処理1
--関数名　値2 = 処理2
--[]:空リスト

sum' [] =  0
sum' (x:xs) = x + sum' xs


--数値のリストに対し要素の積を計算する関数productを定義せよ。
product' [] = 1
product' (x:xs) = x * product' xs


--リストを逆順に整列するように関数qsortの定義を変えるには、どうすればいいか。
--where：関数内で、その関数だけで使用できる関数や、変数を定義できる。

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort lager
    where
        smaller = [a | a <- xs, a <= x]
        lager = [b | b <- xs, b > x]

qsortR [] = []
qsortR (x:xs) = qsortR lager ++ [x] ++ qsortR smaller
    where
        smaller = [a | a <- xs, a < x]
        lager = [b | b <- xs, b >= x]

main :: IO ()
main = someFunc
