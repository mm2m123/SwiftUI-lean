//
//  ContentView.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach (0..<4) {_ in
                CardView(isFaceUp: true)
            }
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0).stroke(lineWidth: 3.0)
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25.0).fill(Color.white)
                Text("🉑").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 25.0).fill()
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
