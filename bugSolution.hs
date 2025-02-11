```haskell
import Data.List (sort)

-- Optimized sort function
optimizedSort :: Ord a => [a] -> [a]
optimizedSort xs
  | length xs < 10 = insertionSort xs -- Switch to insertion sort for smaller lists
  | otherwise = sort xs

insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) | x <= y    = x : y : ys
                | otherwise = y : insert x ys

main :: IO ()
main = do
  let xs = [1..100000] --Example large list
  let ys = reverse xs
  print $ length $ optimizedSort ys  -- Much faster for nearly sorted lists
```