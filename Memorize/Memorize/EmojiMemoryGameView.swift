//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by 张毅成 on 2020/7/7.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        Grid(viewModel.cards) { card in
            CardView(card: card).onTapGesture {
                viewModel.choose(card: card)
            }
            .padding(5)
        }
        .foregroundColor(.orange)
        .padding(.all, 10)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).stroke(lineWidth: edgeLineWidth)
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).fill().foregroundColor(.white)
                    Text(card.content)
                }else{
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).fill()
                }
            }
            .font(
                Font.system(
                    size:fontSize(for: geometry.size)
                )
            )
        })
    }
    
    // MARK: - Drawing Constants
    
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3.0
    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
