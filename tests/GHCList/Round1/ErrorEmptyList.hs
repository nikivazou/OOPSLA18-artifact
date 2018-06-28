{-@ LIQUID "--eliminate=none" @-}

module Round1.ErrorEmptyList (errorEmptyList) where

{-@ errorEmptyList :: x:{String | ?? } -> a @-}
errorEmptyList :: String -> a
errorEmptyList fun =
  errorWithoutStackTrace (prel_list_str ++ fun ++ ": empty list")

{-@ prel_list_str :: String @-}
prel_list_str :: String
prel_list_str = "Prelude."