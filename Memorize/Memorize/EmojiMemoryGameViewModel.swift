//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/8.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    @Published private var model: MemoryGameModel<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGameModel<String> {
        let emojis: Array<String> = ["😣"]
        return MemoryGameModel<String>(numberOfPairsOfCards: 1) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    //MARK: - Access to the model
    var cards: Array<MemoryGameModel<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGameModel<String>.Card) {
        model.choose(card: card)
    }
}
