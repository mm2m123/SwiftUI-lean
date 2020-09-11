//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/1.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }.padding()
    }
}

struct CardView: View {
    var card: MemoryGameModel<String>.Card
    var body: some View {
        ZStack {
            Text(card.content)
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 25.0).stroke(Color.orange, lineWidth: 3.0)
            }else{
                RoundedRectangle(cornerRadius: 25.0).fill(Color.orange)
            }
        }
        .font(.largeTitle)
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGameViewModel())
    }
}