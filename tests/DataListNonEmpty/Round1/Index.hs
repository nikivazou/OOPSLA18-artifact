{-@ LIQUID "--no-termination"  @-}
{-@ LIQUID "--scrape-imports" @-}
module Round1.Index where

import NonEmptyRound1
import Prelude hiding ((!!), length)
import qualified DataList as List

{-@ measure nlen :: NonEmpty a -> Int @-} 
{-@ (:|) :: a -> xs:[a] -> {o:NonEmpty a | nlen o == 1 + len xs } @-}
{-@ invariant {l:NonEmpty a | 0 <= nlen l } @-}

{-@ (!!) :: xs:NonEmpty a -> i:{Int | ?? } -> a @-}
(!!) :: NonEmpty a -> Int -> a
(!!) (x :| xs) n | n == 0    = x
(!!) (x :| xs) n | n > 0     = xs List.!! (n - 1) 
(!!) (x :| xs) n | otherwise = error "NonEmpty.!! negative argument"

