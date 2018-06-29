module Round2.Scanl where

import NonEmptyRound2 hiding (scanl1)
import qualified DataList as List 


{-@ assume GHCList.scanl :: (b -> a -> b) -> b -> i:[a] -> {o:[b] | ??} @-}

scanl1 :: (a -> a -> a) -> NonEmpty a -> NonEmpty a
scanl1 f (a :| as) = fromList (List.scanl f a as)
