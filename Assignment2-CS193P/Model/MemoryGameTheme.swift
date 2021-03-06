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
            emojis = ["๐ถ","๐ฑ","๐ญ","๐ฆ","๐ป","๐จ","๐ฎ","๐ธ",
                      "๐บ","๐ด","๐","๐ต","๐ง","๐","๐ฏ","๐ฆ"]
            self.name = "Animals"
        case .flags:
            emojis = ["๐ฆ๐ฒ","๐ฆ๐ผ","๐ง๐พ","๐ง๐ฌ","๐ฌ๐ง","๐ป๐ช",
                        "๐ฉ๐ช","๐ท๐บ","๐ธ๐จ","๐ฎ๐ฑ","๐จ๐จ","๐ต๐ช","๐ฐ๐ต"]
            self.name = "Flags"
        case .plants:
            emojis = ["๐ท","๐","๐ชด","๐ต","๐ฒ","๐ณ",
                      "โ๏ธ","๐พ","๐น","๐บ","๐ป"]
            self.name = "Plants"
        case .sport:
            emojis = ["โฝ๏ธ","๐","๐","๐ฅ","โธ","๐๐ปโโ๏ธ","๐๐ป","๐ด๐ปโโ๏ธ","โท",
                      "๐","๐ช","๐ธ","๐ฃ๐ปโโ๏ธ","๐คฝ๐ป","โน๐ปโโ๏ธ","๐","๐ฅ","๐คพ๐ป","๐๐ปโโ๏ธ"]
            self.name = "Sport"
        case .fruits:
            emojis = ["๐","๐","๐","๐","๐","๐",
                      "๐ฅญ","๐","๐ฅ","๐","๐","๐ฅ","๐"]
            self.name = "Fruits"
        case .tools:
            emojis = ["๐ง","๐ช","๐จ","๐ ","โ","๐ช",
                      "๐ช","๐งฒ","๐ฉ","โ๏ธ","๐งน","๐ช ","๐ช"]
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


