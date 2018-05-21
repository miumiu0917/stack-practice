module SpaceVector
    ( Vector(..)
    , plus
    ) where

data Vector a = Vector a a a deriving (Show)

(+) :: (Num a) => Vector a -> Vector a -> Vector a
Vector x1 y1 z1 + Vector x2 y2 z2 = Vector (x1 + x2) (y1 + y2) (z1 + z2)
