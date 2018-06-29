{-@ LIQUID "--no-termination" @-}
module Round1.Transpose where 

import GHCList 
import Prelude hiding (map, head, tail)


{-@ transpose           :: {o: [[a]] | ??} -> [[a]]  @-}
transpose               :: [[a]] -> [[a]]
transpose []             = []
transpose ([]   : xss)   = transpose xss
transpose ((x:xs) : xss) = (x : map head xss) : transpose (xs : map tail xss)

