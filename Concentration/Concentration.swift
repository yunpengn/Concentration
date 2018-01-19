//
//  Concentration.swift
//  Concentration
//
//  Created by Yunpeng Niu on 19/01/18.
//  Copyright © 2018 Yunpeng Niu. All rights reserved.
//

import Foundation

class Concentration {
    var cards: [Card] = []
    var indexOfOneandOnlyOneFaceUpCard: Int?

    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let newCard = Card()
            cards += [newCard, newCard]
        }

        // TODO: Shuffle the cards
    }

    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneandOnlyOneFaceUpCard, matchIndex != index {
                // Check if two cards match.
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneandOnlyOneFaceUpCard = nil
            } else {
                //Either no card or 2 cards are facing up.
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneandOnlyOneFaceUpCard = index
            }
        }
    }
}
