{-@ LIQUID "--no-termination" @-}
module Round2.Init where

import Prelude       hiding (init)
import GHCListRound2 hiding (init)


{-@ init                :: xs:{[a] | ?? } ->  [a] @-}
init                    :: [a] -> [a]
init [x]                =  []
init (x:xs)             =  x : init xs
init []                 =  errorEmptyList "init"
