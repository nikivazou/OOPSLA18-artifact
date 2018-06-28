{-@ LIQUID "--no-termination" @-}

module Round2.Maximum where

import GHCListRound2 hiding (maximum)
import Prelude       hiding (maximum, foldl1)

{-@ maximum :: (Ord a) => i:{[a] | ?? } -> a @-}
maximum                 :: (Ord a) => [a] -> a
maximum []              =  errorEmptyList "maximum"
maximum xs              =  foldl1 max xs

