{-@ LIQUID "--no-termination" @-}

module Round1.Scanr where

import Prelude hiding (scanr)

{-@ scanr               :: (a -> b -> b) -> b -> i:[a] -> {o:[b] | ??} @-}
scanr                   :: (a -> b -> b) -> b -> [a] -> [b]
scanr _ q0 []           =  [q0]
scanr f q0 (x:xs)       =  f x q : qs
                           where qs@(q:_) = scanr f q0 xs
