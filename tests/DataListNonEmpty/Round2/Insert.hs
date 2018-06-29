module Round2.Insert where

import NonEmptyRound2 hiding (insert)
import qualified DataList as List 

{-@ assume DataList.insert :: a -> [a] -> {o:[a] | ?? } @-}

insert  :: (Ord a) => a -> NonEmpty a -> NonEmpty a
insert a xs = fromList $ List.insert a $ toList xs