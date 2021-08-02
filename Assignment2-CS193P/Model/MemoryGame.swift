//
//  MemoryGame.swift
//  Assignment2-CS193P
//
//  Created by Margo Naumenko on 02.08.2021.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    
    private(set) var cards: Array<Card>
    
    private(set) var score = 0
    
    private var indexOfTheOnlyOneFaceUpCard: Int?
    
    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: {$0.id == card.id}),
           !card.isFaceUp,
           !card.isMathed{
            if let potentialMatchIndex = indexOfTheOnlyOneFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMathed = true
                    cards[potentialMatchIndex].isMathed = true
                    score += 2 // Required Task 15
                } else if cards[chosenIndex].hasBeenSeen || cards[potentialMatchIndex].hasBeenSeen {
                    score -= 1
                }
                indexOfTheOnlyOneFaceUpCard = nil
            } else {
                indexOfTheOnlyOneFaceUpCard = chosenIndex
                for index in cards.indices {
                    if cards[index].isFaceUp {
                        cards[index].isFaceUp = false
                        cards[index].hasBeenSeen = true
                    }

                }
            }
            cards[chosenIndex].isFaceUp.toggle()
        }
    }

    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for index in 0..<numberOfPairsOfCards{
            let content : CardContent = createCardContent(index)
            cards.append(Card(content: content, id: index*2))
            cards.append(Card(content: content, id: index*2+1))
        }
        cards.shuffle() // Required Task 13
    }
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMathed: Bool = false
        var hasBeenSeen: Bool = false
        var content: CardContent
        var id: Int
    }
}