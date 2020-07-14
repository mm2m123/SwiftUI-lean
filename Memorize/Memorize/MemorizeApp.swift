//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 张毅成 on 2020/7/7.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
