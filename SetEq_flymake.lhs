%format (Set []) = "\emptyset"
%format `subSet` = "\subseteq"
\begin{code}
module SetEq  ( Set(..)
              , emptySet
              , isEmpty
              , inSet
              , subSet
              , insertSet
              , deleteSet
              , powerSet
              , takeSet
              , list2set
              , (!!!))
       where
-- import List (delete)

infixl 9 !!!

newtype Set a = Set [a]

instance Eq a => Eq (Set a) where
  set1 == set2 = set1 `subSet` set2 && set2 `subSet` set1

instance (Show a) => Show (Set a) where
  showsPrec _ (Set s) str = showSet s str

showSet []      str  = showString "{}" str
showSet (x:xs)  str  = showChar '{' (shows x (showl xs str))
  where  showl []      str  = showChar '}' str
         showl (x:xs)  str  = showChar ',' (shows x (showl xs str))

emptySet :: Set a
emptySet = Set []

isEmpty :: Set a -> Bool
isEmpty (Set [])  = True
isEmpty _         = False

inSet :: (Eq a) => a -> Set a -> Bool
inSet x (Set s) = x `elem` s

subSet :: (Eq a) => Set a -> Set a -> Bool
subSet (Set []) _ = True
subSet (Set (x:xs)) set = (inSet x set) && (Set xs) `subSet` set

\end{code}