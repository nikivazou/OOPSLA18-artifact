{-@ LIQUID "--no-termination" @-}

module Round2.GroupBy where

import qualified DataList as List  
import NonEmptyRound2 hiding (groupBy)


{-@ GHCList.span :: (a -> Bool) -> [a] -> ([a],{r:[a] | ?? }) @-}

groupBy :: (a -> a -> Bool) -> NonEmpty a -> [NonEmpty a]
groupBy eq0 xs = go eq0 $ toList xs
  where
    go _  [] = []
    go eq (x : xs) = (x :| ys) : groupBy eq (fromList zs)
      where (ys, zs) = List.span (eq x) xs
