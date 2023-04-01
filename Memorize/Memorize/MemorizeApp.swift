//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Augusto Simionato on 28/11/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
