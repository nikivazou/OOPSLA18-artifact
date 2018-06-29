module Round2.Lift where

import qualified DataList as List  
import NonEmptyRound2 hiding (lift)

{-@ lift :: ([a] -> {o:[b] | ?? }) -> NonEmpty a -> NonEmpty b @-}
lift :: ([a] -> [b]) -> NonEmpty a -> NonEmpty b
lift f xs = fromList $ f $ toList xs