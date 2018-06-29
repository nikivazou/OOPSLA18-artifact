{-@ lift :: ([a] -> {o:[b] | 0 < len o }) -> NonEmpty a -> NonEmpty b @-}
{-@ fmap :: (a -> b) -> i:NonEmpty a -> {o:NonEmpty b | nlen o == nlen i } @-}
