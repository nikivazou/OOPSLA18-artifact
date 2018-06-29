{-@ GHC.Base.errorWithoutStackTrace :: {v:_ | false} -> a @-}


{-@ embed GHC.Integer.Type.Integer as Int @-}
{-@ invariant {xs:[a] | 0 <= len xs } @-}
{-@ (GHC.Num.-) :: Num a => x:a -> y:a -> {o:a | o == x-y } @-}


{-@ GHCList.errorEmptyList         :: {v:String | false } -> a @-}

{-@ GHCList.scanr  :: (a -> b -> b) -> b -> i:[a] -> {o:[b] | 0 < len o} @-}
{-@ GHCList.scanr1 :: (a -> a -> a) -> i:[a] -> {o:[a] | len i == len o} @-}


{-@ GHCList.cycle   :: i:{[a] | 0 < len i } -> [a] @-}
{-@ GHCList.foldl1  :: (a -> a -> a) -> i:{[a] | 0 < len i } -> a @-}
{-@ GHCList.foldl1' :: (a -> a -> a) -> i:{[a] | 0 < len i } -> a @-}
{-@ GHCList.foldr1  :: (a -> a -> a) -> i:{[a] | 0 < len i } -> a @-}
{-@ GHCList.head    :: i:{[a] | 0 < len i } -> a @-}
{-@ (GHCList.!!)    :: xs:[a] -> i:{Int | 0 <= i && i < len xs } -> a @-}
{-@ GHCList.init    :: i:{[a] | 0 < len i } ->  [a] @-}
{-@ GHCList.last    :: i:{[a] | 0 < len i } ->  a   @-}
{-@ GHCList.tail    :: i:{[a] | 0 < len i } -> [a]  @-}
{-@ GHCList.maximum :: (Ord a) => i:{[a] | 0 < len i } -> a @-}
{-@ GHCList.minimum :: (Ord a) => i:{[a] | 0 < len i } -> a @-}

