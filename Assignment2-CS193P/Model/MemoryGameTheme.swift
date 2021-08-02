//
//  MemoryGameTheme.swift
//  Assignment2-CS193P
//
//  Created by Margo Naumenko on 02.08.2021.
//

import Foundation

//Required Task 3
struct MemoryGameTheme {
    
    //Required task 8
    enum ThemeName {
        case animals
        case flags
        case plants
        case sport
        case fruits
        case tools
    }
    
    //Required Task 9
    init(_ name: ThemeName, color: String, numberOfPairsOfCards: Int = -1) {
        switch name {
        case .animals:
            emojis = ["🐶","🐱","🐭","🦊","🐻","🐨","🐮","🐸",
                      "🐺","🐴","🐗","🐵","🐧","🐔","🐯","🦁"]
            self.name = "Animals"
        case .flags:
            emojis = ["🇦🇲","🇦🇼","🇧🇾","🇧🇬","🇬🇧","🇻🇪",
                        "🇩🇪","🇷🇺","🇸🇨","🇮🇱","🇨🇨","🇵🇪","🇰🇵"]
            self.name = "Flags"
        case .plants:
            emojis = ["🌷","🎋","🪴","🌵","🌲","🌳",
                      "☘️","🌾","🌹","🌺","🌻"]
            self.name = "Plants"
        case .sport:
            emojis = ["⚽️","🏀","🏈","🥊","⛸","🏋🏻‍♀️","🏇🏻","🚴🏻‍♀️","⛷",
                      "🏂","🪂","🏸","🚣🏻‍♀️","🤽🏻","⛹🏻‍♂️","🏓","🥌","🤾🏻","🏌🏻‍♂️"]
            self.name = "Sport"
        case .fruits:
            emojis = ["🍏","🍐","🍊","🍋","🍌","🍑",
                      "🥭","🍍","🥝","🍎","🍉","🥑","🍈"]
            self.name = "Fruits"
        case .tools:
            emojis = ["🔧","🪛","🔨","🛠","⛏","🪚",
                      "🪓","🧲","🔩","⚙️","🧹","🪠","🔪"]
            self.name = "Tools"
        }
        // Required Task 7
        if numberOfPairsOfCards < emojis.count && numberOfPairsOfCards > 0 {
            self.numberOfPairsOfCards = numberOfPairsOfCards
        } else {
            self.numberOfPairsOfCards = emojis.count
        }
        self.color = color
    }
    
    let name: String
    var emojis: Array<String>
    let numberOfPairsOfCards: Int
    let color: String
}


