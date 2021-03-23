module Main where

import Other (Id)

-- type Id :: forall k. k -> k
-- type Id a = a

type Alias = Int

type Wrapped :: forall k. (Type -> k) -> Row k -> Row k
type Wrapped f r = (key :: f Alias | r)

type Unwrapped :: Row Type -> Row Type
type Unwrapped r = Wrapped Id r
