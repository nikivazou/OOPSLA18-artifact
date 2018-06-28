{-@ LIQUID "--no-termination" @-}

module Round2.Cycle where

import Prelude       hiding (cycle)
import GHCListRound2 hiding (cycle)

{-@ cycle               :: xs:{[a] | ?? } -> [a] @-}
cycle                   :: [a] -> [a]
cycle []                = errorEmptyList "cycle"
cycle xs                = xs' where xs' = xs ++ xs'
