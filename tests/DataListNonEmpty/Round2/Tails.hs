module Round2.Scanl where

import NonEmptyRound2 hiding (tails)
import qualified DataList as List 


{-@ assume DataList.tails :: i:{[a] | ?? } -> {o:[[a]] | ??} @-}

tails :: NonEmpty a -> NonEmpty [a]
tails xs = fromList $ List.tails $ toList xs