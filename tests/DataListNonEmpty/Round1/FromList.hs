{-@ LIQUID "--no-termination"  @-}
module Round1.FromList where

import qualified DataList as List 
import NonEmptyRound1 hiding (fromList)

{-@ fromList ::  i:{[a] | ?? } -> NonEmpty a @-}
fromList :: [a] -> NonEmpty a
fromList (a:as) = a :| as
fromList []     = error "NonEmpty.fromList: empty list"