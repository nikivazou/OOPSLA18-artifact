{-@ cycle   :: i:{[a] | 0 < len i } -> [a] @-}
{-@ foldl1  :: (a -> a -> a) -> i:{[a] | 0 < len i } -> a @-}
{-@ foldl1' :: (a -> a -> a) -> i:{[a] | 0 < len i } -> a @-}
{-@ foldr1  :: (a -> a -> a) -> i:{[a] | 0 < len i } -> a @-}
{-@ head    :: i:{[a] | 0 < len i } -> a @-}
{-@ (!!)    :: xs:[a] -> i:{Int | 0 <= i && i < len xs } -> a @-}
{-@ init    :: i:{[a] | 0 < len i } ->  [a] @-}
{-@ last    :: i:{[a] | 0 < len i } ->  a @-}
{-@ tail    :: i:{[a] | 0 < len i } -> [a] @-}
{-@ maximum :: (Ord a) => i:{[a] | 0 < len i } -> a @-}
{-@ minimum :: (Ord a) => i:{[a] | 0 < len i } -> a @-}
