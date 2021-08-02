//
//  Assignment2_CS193PApp.swift
//  Assignment2-CS193P
//
//  Created by Margo Naumenko on 02.08.2021.
//

import SwiftUI

@main
struct Assignment2_CS193PApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
