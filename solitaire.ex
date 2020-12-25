import DiscUnion

defmodule Suit do
  use DiscUnion
  defunion Hearts
  | Diamonds
  | Clubs
  | Spades
end

defmodule Rank do
  use DiscUnion
  defunion King
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

defmodule Card do
  use Suit, Rank
  def new(rank, suit) do
    %Card{
      rank: Rank,
      suit: Suit
    }
  end
end
