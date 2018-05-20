module Main where

import Pfad

main :: IO ()
main = print $ take' 5 $ repeat' "hoge"
