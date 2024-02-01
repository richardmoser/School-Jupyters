--data Tree a = Leaf a | Node (Tree a) (Tree a)
--
--size :: Tree a -> Int
--size (Leaf a) = 1
--size (Node lhs _ rhs) = size lhs + 1 + size rhs
--
--flatten :: Tree a -> [a]
--flatten (Leaf a) = [a]
--flatten (Node lhs a rhs) = flatten lhs ++ [a] ++ flatten rhs
--
--t :: Tree Int
--t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))
--
--flatten t
--size t

-- creates a compilable haskell program

Path: test.hs
data Tree a = Leaf a | Node (Tree a) (Tree a)

size :: Tree a -> Int
size (Leaf a) = 1
size (Node lhs _ rhs) = size lhs + 1 + size rhs

flatten :: Tree a -> [a]
flatten (Leaf a) = [a]
flatten (Node lhs a rhs) = flatten lhs ++ [a] ++ flatten rhs

t :: Tree Int
t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))

flatten t
size t

