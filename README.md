# Haskell Sort Performance Issue with Reversed Lists

This repository demonstrates a performance issue with Haskell's built-in `sort` function when used on large, nearly sorted (reversed) lists.  The issue is that the default sorting algorithm doesn't optimize for nearly sorted input, leading to unnecessary work.

The `bug.hs` file shows the problem. The `bugSolution.hs` file shows a potential solution using insertion sort for smaller lists, a more efficient algorithm for this specific case.