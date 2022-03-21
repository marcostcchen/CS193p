//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Imac21 on 15/02/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
