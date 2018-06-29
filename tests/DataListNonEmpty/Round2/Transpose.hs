{-@ LIQUID "--no-termination" @-}
{-@ LIQUID "--scrape-imports"  @-}

module Round2.Transpose where

import NonEmptyRound2 hiding (transpose)
import qualified DataList as List 
import Prelude hiding (fmap)
import Control.Monad hiding (fmap)


{-@ assume DataList.transpose 
  :: {i: [{is:[a] | 0 < len is && ?? }] | 0 < len i }  -> {o: [{os:[a] | 0 < len os && ?? }] | 0 < len o }  @-}

transpose :: NonEmpty (NonEmpty a) -> NonEmpty (NonEmpty a)
transpose xs = fmap fromList $ 
               fromList $ List.transpose $ toList $
               fmap toList xs
