module Main where

import Lib
import System.Random

randAlpha = getStdRandom $ randomR('A', 'Z')

main :: IO ()
main = someFunc
