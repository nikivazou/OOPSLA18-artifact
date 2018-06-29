{-@ LIQUID "--no-termination" @-}

module Round2.GroupBy1 where

import qualified DataList as List  
import NonEmptyRound2 hiding (groupBy1)


{-@ GHCList.span :: (a -> Bool) -> [a] -> ([a],{r:[a] | ?? }) @-}

groupBy1 :: (a -> a -> Bool) -> NonEmpty a -> NonEmpty (NonEmpty a)
groupBy1 eq (x :| xs) = (x :| ys) :| groupBy eq (fromList zs)
  where (ys, zs) = List.span (eq x) xs