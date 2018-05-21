module Main where

import Pfad
import SpaceVector

main :: IO ()
main = print $ Vector 3 2 7 `dot` Vector 2 2 2 
