//
//  MemoryGame.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/8.
//

import Foundation

// 原来CardContent是一个不在乎的类型，不能使用==
// Equatable -> 用这个修饰后可以用 == 进行比较
struct MemoryGameModel<CardContent> where CardContent: Equatable {
    var cards: Array<Card>
    //唯一一张被选中且卡面朝上的卡的index
    var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            /**
             1.indices -> 索引/下标
             2.filter -> 用于选择数组元素中满足某种条件的元素 aka 筛选    忽略了参数名而使用默认参数$0
             
             这里是找出cards里面isFaceUp = true 的元素的索引
             */
            cards.indices.filter {cards[$0].isFaceUp}.only
//            for index in cards.indices {
//                if cards[index].isFaceUp {
//                    faceUpCardIndices.append(index)
//                }
//            }
//            if faceUpCardIndices.count == 1 {
//                return faceUpCardIndices[0]
//            }else{
//                return nil
//            }
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue

            }
        }
    }
    
    mutating func choose(card: Card) {
        print(cards.indices)
        /**
         1.let chosenIndex = cards.firstIndex(matching: card) -> 当cards能找到index，并将index赋值给chosenIndex
         2.!cards[chosenIndex].isFaceUp -> 所选中的卡片 卡面朝下
         3.!cards[chosenIndex].isMatched -> 所选中的卡片 没有被匹配
         */
        if let chosenIndex = cards.firstIndex(matching: card), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched {
            //当有唯一一张被选中且卡面朝上的卡的index
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                //当唯一一张被选中且卡面朝上的卡和刚刚被选中的卡内容一致时
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    //将两张卡片的匹配设为true
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                //翻转卡片
                cards[chosenIndex].isFaceUp = true
                //无论是否匹配，都将唯一一张被选中且卡面朝上的卡的index置为空
//                indexOfTheOneAndOnlyFaceUpCard = nil
            }else{
                //当没有被选中的卡，则将所有卡片的卡面设置为朝下
//                for index in cards.indices {
//                    cards[index].isFaceUp = false
//                }
                //将唯一一张被选中且卡面朝上的卡的index置为刚才选中的卡
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
