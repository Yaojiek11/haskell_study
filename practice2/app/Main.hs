module Main where

import Lib


-- <列挙型>

-- Show
--data Color = Blue | Red | Green | White deriving Show

-- Enum
-- fromEnum 列挙型 -> 数値
-- toEnum 数値 -> 列挙型
data Color' = Blue | Red | Green | White deriving (Show, Enum)
{- print $ fromEnum Blue
   print (toEnum 0 :: Color) -}

--Bool
data Bool = False | True deriving(Eq, Ord, Enum, Read, Show, Bounded)


-- <直積型>

-- data 型 = コンストラクタ [フィールドの型 ...]
data Point = Point Int Int deriving Show

offset (Point x1 y1) (Point x2 y2) =
    Point (x1 + x2) (y1 + y2)
{- let a = Point 2 3
       b = Point 1 1
       c = offset a b
   print c -}

-- newtype 型 = コンストラクタ　フィールドの型
newtype Foo = Foo Int

data Point' = Point' Int Int deriving Show
data Rect = Rect Int Int Int Int deriving Show

contains(Rect x y w h) (Point px py) =
    x <= px && px < x + w && y <= py && py < y + h


-- <直和型>

-- data 型 = コンストラクタ [フィールドの型 ...] | コンストラクタ [フィールドの型 ...] [| ...]
--data Foo = Bar Int Int | Baz Int Int Int

data Test = TestInt Int | TestStr String deriving Show
foo(TestInt  1 ) = "bar"
foo(TestStr "1") = "baz"
foo _            = "?"


-- <レコード構文>

-- data 型 = コンストラクタ{名前 :: 型 [, 名前 :: 型 ...]} [| ...]
data Foo' = Foo' { bar :: Int, baz :: String } deriving Show

-- 生成
--Foo { bar = 1, baz = "a" }

{- let f = Foo' { bar = 1, baz = "a" }
       g = f    { bar = 2 } -- barを変更したコピー
    print f
    print g-}

main :: IO ()
main = someFunc
