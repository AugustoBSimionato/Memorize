//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Augusto Simionato on 06/12/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🤪", "🥳", "💻", "🫥", "🤯", "🥸", "😭", "🫣", "😴", "🤠", "👾", "🤥", "🤗", "🤖", "🤕", "😶", "😸", "🤡", "🤧", "😪", "🎃", "😻", "😌", "🤣"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
