//
//  ContentView.swift
//  Memorize
//
//  Created by Imac21 on 15/02/22.
//

import SwiftUI

//View
struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(viewModel.cards, id: \.self.content) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            Spacer()
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    let card: MemorizeGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
    }
}
