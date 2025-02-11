```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- prints [1,2,3,4,5]
  let zs = reverse ys
  print zs --prints [5,4,3,2,1]
  let ws = sort zs
  print ws -- prints [1,2,3,4,5] 
  let vs = reverse ws
  print vs -- prints [5,4,3,2,1]
```