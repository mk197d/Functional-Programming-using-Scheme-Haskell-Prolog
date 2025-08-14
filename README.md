# Functional-Programming-using-Scheme-Haskell-Prolog

## Project Overview
- **Languages**: Scheme, Haskell, Prolog
- **Topics**: Recursion, Higher-order functions, Pattern matching, Type inference, List processing

## Table of Contents
- [Scheme Solutions](#scheme-solutions)
- [Haskell Solutions](#haskell-solutions) 
- [Prolog Solutions](#prolog-solutions)
- [Running the Solutions](#running-the-solutions)
- [File Structure](#file-structure)

## Scheme Solutions

### Recursive Function Implementation
**File**: `Q1.scm`

Implements a recursive function `f(n)` defined as:
- f(n) = n, if n < 3
- f(n) = f(n-1) + 2f(n-2) + 3f(n-3), if n ≥ 3

```scheme
> (f 3)
4
```

### Higher-Order Function Implementation
**File**: `Q2.scm`

Implements `filtered-fold` that applies fold operation only to elements satisfying a predicate.

```scheme
> (filtered-fold even? + 0 '(2 3 4 5 6 7 8))
20
```

### Pattern Matching System
**File**: `Q3.scm`

Two-part solution:
1. `sublist` function that checks if first list appears as contiguous sublist in second list
2. `lgrep` function that returns lists containing a given sublist

```scheme
> (sublist '(c d e) '(a b c d e f g))
#t
> (lgrep '(c d e) '((a b c d e f g) (c d c d e) (a b c d) (h i c d e k) (x y z)))
((a b c d e f g) (c d c d e) (h i c d e k))
```

## Haskell Solutions

### List Division Function
**File**: `Q4.hs`

Implements `divide` function that splits a list at index n-1.

```haskell
> divide 3 [1,2,3,4,5,6,7]
([1,2,3], [4,5,6,7])
```

### Ramanujan Numbers Algorithm
**File**: `Q5.hs`

Finds all quadruples (a,b,c,d) where a³ + b³ = c³ + d³ (inspired by the famous Ramanujan-Hardy number 1729).

```haskell
> quads 20
[(1,12,9,10),(2,16,9,15)]
```

### Election Management System
**File**: `Q6.hs`

Complete election management system with three functions:
- `count`: Count votes for a candidate
- `result`: Generate sorted election results
- `winner`: Determine the winning candidate

```haskell
> count "P1" ["P1", "P2", "P3", "P2", "P2", "P1"]
2
> result ["P1", "P2", "P3", "P2", "P2", "P1"]
[("P1", 2), ("P2", 3), ("P3", 1)]
> winner ["P1", "P2", "P3", "P2", "P2", "P1"]
"P2"
```

## Prolog Solutions

### Type Inference System
**File**: `Q7.pl`

Implements a basic type inference system for a simple language "Kyun" with assignment statements. The system infers types {int, bool, any} for variables based on their usage.

```prolog
% For program: assign(x, 10). assign(z, true).
?- type(x, W).  % W = int
?- type(z, W).  % W = bool

% For conflicting types: assign(x, 10). assign(z, true). assign(z, x).
?- type(z, W).  % W = any
```

## Running the Solutions

### Scheme
```bash
# Using DrRacket with SICP language pack
# Or using MIT Scheme
mit-scheme --load Q1.scm
```

### Haskell
```bash
# Using GHC interpreter
ghci Q4.hs

# Or compile and run
ghc Q4.hs
./Q4
```

### Prolog
```bash
# Using SWI-Prolog
swipl Q7.pl
?- [Q7].
```

## File Structure

```
.
├── README.md           # This file
├── Q1.scm             # Scheme recursive function
├── Q2.scm             # Scheme higher-order function
├── Q3.scm             # Scheme pattern matching
├── Q4.hs              # Haskell list division
├── Q5.hs              # Haskell Ramanujan numbers
├── Q6.hs              # Haskell election system
└── Q7.pl              # Prolog type inference
```

## Key Concepts Demonstrated

### Functional Programming (Scheme/Haskell)
- Recursion and tail recursion
- Higher-order functions
- List processing and manipulation
- Pattern matching
- Lazy evaluation (Haskell)
- List comprehensions (Haskell)

### Logic Programming (Prolog)
- Facts and rules
- Backtracking
- Cut operator (!)
- Type checking and inference
- Constraint satisfaction

