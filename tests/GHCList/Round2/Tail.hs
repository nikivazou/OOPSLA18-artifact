{-@ LIQUID "--no-termination" @-}
module Round2.Tail where

import Prelude       hiding (tail)
import GHCListRound2 hiding (tail)

{-@ tail                :: xs:{[a] | ?? } -> [a] @-}
tail                    :: [a] -> [a]
tail (_:xs)             =  xs
tail []                 =  errorEmptyList "tail"
