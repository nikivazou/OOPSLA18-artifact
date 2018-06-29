{-@ maximumBy    :: (a -> a -> Ordering) -> i:{[a] | 0 < len i } -> a @-}
{-@ minimumBy    :: (a -> a -> Ordering) -> i:{[a] | 0 < len i } -> a @-}
{-@ transpose    :: {o: [[a]] | len o == 0} -> [[a]]  @-}

-- Verification of genericIndex needs templates for integrals, thus is omitted
{-@ genericIndex :: (Integral i) => xs:{[a] | false } -> i -> a @-}
