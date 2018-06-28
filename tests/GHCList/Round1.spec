{-@ errorEmptyList         :: {v:String | false } -> a @-}

{-@ scanr  :: (a -> b -> b) -> b -> i:[a] -> {o:[b] | 0 < len o} @-}
{-@ scanr1 :: (a -> a -> a) -> i:[a] -> {o:[a] | len i == len o} @-}
