module Round2.GroupAllWith where

import qualified DataList as List  
import NonEmptyRound2 

import Data.Function (on)

{-@ DataList.sortBy :: (a -> a -> Ordering) -> [a] -> {o:[a] | ?? } @-}

groupAllWith :: (Ord b) => (a -> b) -> NonEmpty a -> [NonEmpty a]
groupAllWith f xs = groupWith f $ fromList $ List.sortBy (compare `on` f) $ toList xs
