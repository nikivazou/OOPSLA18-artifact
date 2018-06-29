module Round1.MaximumBy where 

import GHCList 
import Prelude hiding (foldl1)

{-@ maximumBy           :: (a -> a -> Ordering) -> {i:[a] | ?? } -> a @-}
maximumBy               :: (a -> a -> Ordering) -> [a] -> a
maximumBy _ []          =  errorWithoutStackTrace "List.maximumBy: empty list"
maximumBy cmp xs        =  foldl1 maxBy xs
                        where
                           maxBy x y = case cmp x y of
                                       GT -> x
                                       _  -> y