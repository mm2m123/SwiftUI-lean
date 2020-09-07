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
            ForEach(0..<4) {_ in
                CardView(isFaceUp: false)
            }
        }.padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            Text("🧸")
            if isFaceUp {
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
        ContentView()
    }
}
