//
//  ContentView.swift
//  Memorize
//
//  Created by 张毅成 on 2020/7/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
            .foregroundColor(.orange)
            .padding(.all, 10)
            .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(lineWidth: 3.0)
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill().foregroundColor(.white)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
