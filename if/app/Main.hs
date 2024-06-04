module Main where

import Lib

main :: IO ()

a = 1
main = do
    if a == 1 then print "1" else print "?"
