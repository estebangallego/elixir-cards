defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of cards
  """

  @doc """
    Run a list of stings representing a deck of playing cards
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eigth", "Nine", "Ten", "J", "Queen", "King"]
    suits  = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
        "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

@doc """
  Determines whether a deck contains a given card

## Examples

      iex(17)> deck = Cards.create_deck
      iex(18)> Cards.containts?(deck, "Ace of Spades")
      true

"""
  def containts?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Divides a deck into a hand and the raminder of the deck.
    The `hand_size` argument indicates how many cards should be in the hand.

  ## Examples

      iex> deck = Cards.create_deck
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]

  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do

    case File.read(filename) do
      {:ok, binary }   -> :erlang.binary_to_term binary
      {:error, _reason} -> "This file does not exist."

    end
  end

  @doc """
    Creates a hand_deck, shuffle it and returns a duple with the hand and reminder deck.
    The `hand_size` represents the number of cards of the deal


  """
  def create_hand(hand_size) do
    Cards.create_deck
    |>  Cards.shuffle
    |>  Cards.deal(hand_size)
  end

end
