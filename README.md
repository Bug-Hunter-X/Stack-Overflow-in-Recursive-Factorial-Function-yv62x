# Stack Overflow in Recursive Factorial Function

This repository demonstrates a common error in recursive functions: stack overflow due to improper handling of the base case.  The `foo` function calculates the factorial recursively.  If a large input is provided, the recursive calls will consume excessive stack space, leading to a stack overflow error.

The solution demonstrates how to add input validation and an alternative iterative solution to prevent this error.

## How to reproduce:

1. Clone this repository.
2. Run the `bug.hack` file using a Hack compiler (e.g., HHVM).
3. Observe the stack overflow error when a large number (e.g., 1000) is passed to the `foo` function.

## Solution:

The `bugSolution.hack` file shows how to improve the code to handle the problem.  An example improvement is the iterative factorial function. 