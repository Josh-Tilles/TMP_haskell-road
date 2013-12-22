data Bool = False | True
    deriving Show

not :: Bool -> Bool
not True   = False
not False  = True

(&&) :: Bool -> Bool -> Bool
False  && _  = False
True   && x  = x

(||) :: Bool -> Bool -> Bool
False  || x  = x
True   || _  = True

infix 1 ==>
(==>) :: Bool -> Bool -> Bool
x ==> y = (not x) || y
-- It is also possible to given a direct definition:
True   ==> x  = x
False  ==> x  = True

min :: Int -> Int -> Int
min x y  | x <= y = x
         | otherwise = y

map :: (a -> b) -> [a] -> [b]
map  _  []      = []
map  f  (x:xs)  = f x : map f xs

filter :: (a -> Bool) -> [a] -> [a]
filter  _  []    = []
filter  p  (x:xs)
    | p x        = x : filter p xs
    | otherwise  = filter p xs

infix 1 <=>
(<=>) :: Bool -> Bool -> Bool
x <=> y = x == y

infixr 2 <+>
(<+>) :: Bool -> Bool -> Bool
x <+> y = x /= y

any, all :: (a -> Bool) -> [a] -> Bool
any p = or . map p
all p = and . map p
-- all = and . map
-- ?? point-free form?

every, some :: [a] -> (a -> Bool) -> Bool
every xs p = all p xs
some xs p = any p xs
-- every = flip all
-- some = flip any
-- ????? maybe?



data [a] = [] | a:[a]
         deriving (Eq, Ord)

instance Eq a => Eq [a] where
  []      == []      = True
  (x:xs)  == (y:ys)  = x==y && xs==ys
  _       == _       = False

instance Ord a => Ord [a] where
  compare []      (_:_)   = LT
  compare []      []      = EQ
  compare (_:_)   []      = GT
  compare (x:xs)  (y:ys)  = primCompAux x y (compare xs ys)

primCompAux :: Ord a => a -> a -> Ordering -> Ordering
primCompAux x y o =
  case compare x y of  EQ -> o;
                       LT -> LT;
                       GT -> GT

head :: [a] -> a
head (x:_)   = x

tail :: [a] -> [a]
tail (_:xs)  = xs

last :: [a] -> a
last [x]     = x
last (_:xs)  = last xs

init :: [a] -> [a]
init [x]     = []
init (x:xs)  = x : init xs

null :: [a] -> Bool
null []     = True
null (_:_)  = False

-- `nub` means "essence"
nub :: (Eq a) => [a] -> [a]
nub []      = []
nub (x:xs)  = x : nub (remove x xs)
  where
    remove y []                   = []
    remove y (z:zs)  | y == z     = remove y zs
                     | otherwise  = z : remove y zs


id :: a -> a
id x = x
