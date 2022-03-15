//
//  MomoryGame.swift
//  Memorize
//
//  Created by Imac21 on 15/03/22.
//

import Foundation
//Model
struct MemorizeGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
