//
//  EmojiMemoryGame.swift
//  Assignment2-CS193P
//
//  Created by Margo Naumenko on 02.08.2021.
//

import SwiftUI

class EmojiMemoryGame : ObservableObject {

    
    init(){
        themeModel = EmojiMemoryGame.themes.randomElement()! // Required task 11
        themeModel.emojis.shuffle() // Required task 5
        gameModel = EmojiMemoryGame.createMemoryGame(theme: themeModel)
        
    }
    
    private static let themes : Array<MemoryGameTheme> = [
        MemoryGameTheme(.animals, color: "orange", numberOfPairsOfCards: 10),
        MemoryGameTheme(.flags, color: "red", numberOfPairsOfCards: 8),
        MemoryGameTheme(.fruits, color: "purpule", numberOfPairsOfCards: 7),
        MemoryGameTheme(.plants, color: "green", numberOfPairsOfCards: Int.random(in: 3...11)), // Extra Credit 2
        MemoryGameTheme(.sport, color: "blue", numberOfPairsOfCards: 7),
        MemoryGameTheme(.tools, color: "pink") // Extra credit 1
    ]
    private static func createMemoryGame(theme: MemoryGameTheme) -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: theme.numberOfPairsOfCards) {
            (pairIndex) in theme.emojis[pairIndex]
        }
    }
    @Published private var gameModel : MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        gameModel.cards
    }
    
    var score: Int {
        gameModel.score
    }
    
    private var themeModel : MemoryGameTheme
    
    var themeName: String {
        return themeModel.name
    }
    
    var color: Color {
        switch themeModel.color {
        case "orange":
            return .orange
        case "red":
            return .red
        case "yellow":
            return .yellow
        case "green":
            return .green
        case "blue":
            return .blue
        case "gray":
            return .gray
        case "purpule":
            return .purple
        case "pink":
            return .pink
        default:
            return .primary
        }
    }

    
    //MARK: - Indent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        gameModel.choose(card)
    }
    
    func startNewGame(){
        themeModel = EmojiMemoryGame.themes.randomElement()! // Required task 11
        themeModel.emojis.shuffle() // Required task 5
        gameModel = EmojiMemoryGame.createMemoryGame(theme: themeModel)
    }
}
