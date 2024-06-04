module Main where

import Lib

foo n = 
    case n of
        0 -> 0
        1 -> 1
        _ -> -1

main :: IO ()
main = someFunc
