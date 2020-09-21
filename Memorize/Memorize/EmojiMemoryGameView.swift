//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/1.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        Grid(viewModel.cards) { card in
            CardView(card: card).onTapGesture {
                viewModel.choose(card: card)
            }
        }
        .padding()
    }
}

struct CardView: View {
    var card: MemoryGameModel<String>.Card
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Text(card.content)
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: cornerRadius).stroke(Color.orange, lineWidth: edgeLineWidth)
                }else{
                    RoundedRectangle(cornerRadius: cornerRadius).fill(Color.orange)
                }
            }
            .font(font(size: geometry.size))
            .foregroundColor(.orange)
        }
    }
    
    // MARK: - Drawing Constants
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    func font(size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * 0.75)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGameViewModel())
    }
}

