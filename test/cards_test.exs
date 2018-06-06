defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20" do
    assert length(Cards.create_deck()) == 20
  end

  test "shuffle" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end

  test "save deck to file" do
    assert Cards.save(Cards.create_deck(), "first") == :ok
  end

  test "load from file" do
    deck = Cards.create_deck()
    Cards.save(deck, "first")
    assert Cards.load("first") == deck
  end
end
