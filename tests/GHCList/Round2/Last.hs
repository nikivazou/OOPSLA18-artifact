{-@ LIQUID "--no-termination" @-}
module Round2.Last where

import Prelude       hiding (last)
import GHCListRound2 hiding (last)


{-@ last                :: xs:{[a] | ?? } ->  a @-}
last [x]                =  x
last (_:xs)             =  last xs
last []                 =  errorEmptyList "last"
