//
//  ContentView.swift
//  Memorize
//
//  Created by 张毅成 on 2020/7/7.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
            .foregroundColor(.orange)
            .padding(.all, 10)
            .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(lineWidth: 3.0)
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill().foregroundColor(.white)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
