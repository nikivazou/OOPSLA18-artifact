{-@ LIQUID "--no-termination" @-}
{-@ LIQUID "--gdepth=2" @-}
module Round2.Index where

import Prelude       hiding ((!!))
import GHCListRound2 hiding ((!!))


{-@ (!!)                :: xs:{[a] | ?? } -> i:{Int | 0 <= i && ?? } -> a @-}
(!!)                    :: [a] -> Int -> a
xs     !! n | n < 0 =  errorWithoutStackTrace "Prelude.!!: negative index"
[]     !! _         =  errorWithoutStackTrace "Prelude.!!: index too large"
(x:_)  !! 0         =  x
(_:xs) !! n         =  xs !! (n-1)
