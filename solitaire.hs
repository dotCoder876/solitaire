

data Rank = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King
  deriving Eq

instance Show Rank where
  show (Ace) = "A"
  show (Two) = "2"
  show (Three) = "3"
  show (Four) = "4"
  show (Five) = "5"
  show (Six) = "6"
  show (Seven) = "7"
  show (Eight) = "8"
  show (Nine) = "9"
  show (Ten) = "T"
  show (Jack) = "J"
  show (Queen) = "Q"
  show (King) = "K"

instance Show Suit where
  show (Spades) = "S"
  show (Hearts) = "H"
  show (Clubs) = "C"
  show (Diamonds) = "D"

data Suit = Spades | Hearts | Clubs | Diamonds
  deriving Eq

data Card = Card Rank Suit

instance Eq Card where
  (Card r1 s1) == (Card r2 s2) = (r1 == r2) && (s1 == s2)

instance Show Card where
  show (Card r s) = show r ++ show s

type Deck = [Card]

shuffle :: Deck -> IO Deck
shuffle [] = return []
shuffle xs = do 
  randomPosition <- getStdRandom (randomR (0, length xs - 1))
  let (left, (a:right)) = splitAt randomPosition xs 
  map (a:) (shuffle (left ++ right))
				
deck :: Deck
  [Card i j, i <- [Ace, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King], j <- [Spades, Hearts, Clubs, Diamonds]]

pick :: Deck -> IO (Maybe Card, Deck)
pick [] = return (Nothing, [])
pick (x:xs) = return (x,xs)