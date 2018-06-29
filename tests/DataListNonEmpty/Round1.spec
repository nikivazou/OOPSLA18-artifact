{-@ LIQUID "--scrape-imports" @-}
{-@ toList   :: NonEmpty a -> {o:[a] | 0 < len o } @-}
{-@ cycle    :: NonEmpty a -> NonEmpty a @-}
{-@ fromList ::  i:{[a] | 0 < len i } -> NonEmpty a @-}

{-@ measure nlen :: NonEmpty a -> Int @-} 
{-@ invariant {l:NonEmpty a | 0 <= nlen l } @-}
{-@ (:|) :: a -> xs:[a] -> {o:NonEmpty a | nlen o == 1 + len xs } @-}

{-@ (!!) :: xs:NonEmpty a -> i:{Int | 0 <= i && i < nlen xs } -> a @-}