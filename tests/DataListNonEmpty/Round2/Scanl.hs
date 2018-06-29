module Round2.Scanl where

import NonEmptyRound2 hiding (scanl)
import qualified DataList as List 


{-@ assume GHCList.scanl :: (b -> a -> b) -> b -> i:[a] -> {o:[b] | ??} @-}

scanl :: (b -> a -> b) -> b -> NonEmpty a -> NonEmpty b
scanl f z xs = fromList $ List.scanl f z $ toList xs
