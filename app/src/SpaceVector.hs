module SpaceVector
    ( Vector(..)
    , plus
    , multiply
    , dot
    , minus
    , d
    , len
    ) where

data Vector a = Vector a a a deriving (Show)

plus :: (Num a) => Vector a -> Vector a -> Vector a
Vector x1 y1 z1 `plus` Vector x2 y2 z2 = Vector (x1 + x2) (y1 + y2) (z1 + z2)

multiply :: (Num a) => a -> Vector a -> Vector a
a `multiply` Vector x1 y1 z1 = Vector (a * x1) (a * y1) (a * z1)

dot :: (Num a) => Vector a -> Vector a -> a
Vector x1 y1 z1 `dot` Vector x2 y2 z2 = (x1 * x2) + (y1 * y2) + (z1 * z2)

minus :: (Num a) => Vector a -> Vector a -> Vector a
Vector x1 y1 z1 `minus` Vector x2 y2 z2 = v1 `plus` ((-1) `multiply` v2)
  where v1 = Vector x1 y1 z1
        v2 = Vector x2 y2 z2

d :: (Floating a) => Vector a -> Vector a -> a
d (Vector x1 y1 z1) (Vector x2 y2 z2) = len $ v1 `minus` v2 
  where v1 = Vector x1 y1 z1
        v2 = Vector x2 y2 z2

len :: (Floating a) => Vector a -> a
len (Vector x1 y1 z1) = sqrt $ x1^2 + y1^2 + z1^2