//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 张毅成 on 2020/7/8.
//

import Foundation
    
class EmojiMemoryGame: ObservableObject {
    @Published private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🉑", "☺️", "💦", "‼️", "🤡", "🐛", "❤️", "🤙", "😞"]
        // 修改定位
        let location = Location()
        location.startUpdatingLocation()
        
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex -> String in
            return emojis[pairIndex]
        }
    }
    
    //MARK: Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        objectWillChange.send()
        model.choose(card: card)
    }
}
