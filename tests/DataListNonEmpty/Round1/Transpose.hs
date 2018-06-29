{-@ LIQUID "--no-termination"  @-}

module Round1.Transpose where

import qualified DataList as List 
import NonEmptyRound1 

import Prelude hiding (fmap)
import Control.Monad hiding (fmap)

{-@ assume DataList.transpose :: {o: [[a]] | ?? } -> [[a]]  @-}

transpose :: NonEmpty (NonEmpty a) -> NonEmpty (NonEmpty a)
transpose xs = fmap fromList $ 
               fromList $ List.transpose $ toList $
               fmap toList xs 