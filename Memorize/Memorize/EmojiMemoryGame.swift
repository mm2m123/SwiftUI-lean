//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/8.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String>
    
    //MARK: - Access to model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
