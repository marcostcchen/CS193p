//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Imac21 on 15/03/22.
//

//ViewModel
import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["😗", "😡", "😐", "😝", "🤓", "😊", "😣", "A", "☹️", "B","C","D","E","F",]
    
    static func createMemoryGame() -> MemorizeGame<String> {
        MemorizeGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemorizeGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemorizeGame<String>.Card> {
        model.cards
    }
}
