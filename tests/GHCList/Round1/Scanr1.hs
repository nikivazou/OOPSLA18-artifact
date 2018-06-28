{-@ LIQUID "--no-termination" @-}

module Round1.Scanr1 where

import Prelude hiding (scanr1)

{-@ scanr1              :: (a -> a -> a) -> xs:{[a] | ?? } -> {v:[a] | ?? } @-}
scanr1                  :: (a -> a -> a) -> [a] -> [a]
scanr1 _ []             =  []
scanr1 _ [x]            =  [x]
scanr1 f (x:xs)         =  f x q : qs
                           where qs@(q:_) = scanr1 f xs
