{-@ LIQUID "--no-termination" @-}
module Round2.Head where

import Prelude       hiding (head)
import GHCListRound2 hiding (head)


{-@ head                :: xs:{[a] | ??} -> a @-}
head                    :: [a] -> a
head (x:_)              =  x
head []                 =  errorEmptyList "head"
