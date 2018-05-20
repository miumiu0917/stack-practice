module Pfad
    ( maximum'
    , replicate'
    , take'
    , reverse'
    , repeat'
    ) where

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x $ maximum' xs

replicate' :: Int -> a -> [a]
replicate' n x
        | n <= 0 = []
        | otherwise = x : replicate' (n-1) x

take' :: Int -> [a] -> [a]
take' _ [] = []
take' n (x:xs)
        | n <= 0 = []
        | otherwise = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x