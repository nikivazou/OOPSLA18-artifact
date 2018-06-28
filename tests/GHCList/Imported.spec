{-@ GHC.Base.errorWithoutStackTrace :: {v:_ | false} -> a @-}


{-@ invariant {xs:[a] | 0 <= len xs } @-}
{-@ (GHC.Num.-) :: Num a => x:a -> y:a -> {o:a | o == x-y } @-}
