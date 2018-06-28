{-@ LIQUID "--no-termination" @-}

module Round2.Minimum where

import GHCListRound2 hiding (minimum)
import Prelude       hiding (minimum, foldl1)

{-@ minimum :: (Ord a) => i:{[a] | ?? } -> a @-}
minimum                 :: (Ord a) => [a] -> a
minimum []              =  errorEmptyList "minimum"
minimum xs              =  foldl1 min xs

