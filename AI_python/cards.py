import random

ranks=['2','3','4','5','6','7','8','9','10','Jack','Queen','King','Ace']
suits=['Hearts','Diamond','Clubs','spades']
deck=[{'rank':rank,'suit':suit}for rank in ranks for suit in suits]


def shuffle_deck(deck):
    random.shuffle(deck)
def display_deck(deck):
    for card in deck:
        print(f"{card['rank']} of {card['suit']}")


shuffle_deck(deck)

print("shuffled deck:")
display_deck(deck)