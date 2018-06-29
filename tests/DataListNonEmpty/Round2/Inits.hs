{-@ LIQUID "--no-termination" @-}

module Round2.Inits where

import qualified DataList as List  
import NonEmptyRound2 hiding (inits)


{-@ assume DataList.inits :: i:{[a] | ?? } -> {o:[[a]] | ??} @-}

inits :: NonEmpty a -> NonEmpty [a]
inits xs = fromList $ List.inits $ toList xs