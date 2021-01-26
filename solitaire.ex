


defmodule Suit do
  @doc "Defines suits"
  use DiscUnion
  defunion 
    Hearts
  | Diamonds
  | Clubs
  | Spades
end

defmodule Rank do
  @doc "Defines ranks"
  use DiscUnion
  defunion 
    King
  | Queen
  | Jack
  | Ten
  | Nine
  | Eight
  | Seven
  | Six
  | Five
  | Four
  | Three
  | Two
  | Ace
end

# defmodule Card do
#   use Discunion, Suit, Rank
#   def new(rank, suit) do
#     %Card{
#       rank: Rank,
#       suit: Suit
#     }
#   end
# end

defimpl String.Chars, for: Rank do
  @doc "implementing to_string for ranks"
  def to_string(rank) do
    King in _ -> "K"
    Queen in _ -> "Q"
    Jack in _ -> "J"
    Ten in _ -> "T"
    Nine in _ -> "9"
    Eight in _ -> "8"
    Seven in _ -> "7"
    Six in _ -> "6"
    Five in _ -> "5"
    Four in _ -> "4"
    Three in _ -> "3"
    Two in _ -> "2"
    Ace in _ -> "A"
  end
end

defimpl String.Chars, for: Suit do
  @doc "implementing to_string for suits"
  def to_string(suit) do
    Spades in _ -> "S"
    Hearts in _ -> "H"
    Clubs in _ -> "C"
    Diamonds in _ -> "D
  end
end
