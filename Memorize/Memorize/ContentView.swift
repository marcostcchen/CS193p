//
//  ContentView.swift
//  Memorize
//
//  Created by Imac21 on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😗", "😡", "😐", "😝", "🤓", "😊", "😣", "A", "☹️", "B","C","D","E","F",]
    @State var emojiCount = 6
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    
    var add: some View {
        Button(action: {
            if(emojiCount < emojis.count) {emojiCount += 1}
        }, label: {
            Image(systemName: "plus.circle")
        })
            .foregroundColor(.blue)
    }
    
    var remove: some View {
        Button(action: {
            if(emojiCount > 0) {emojiCount -= 1}
        }, label: {
            Image(systemName: "minus.circle")
        })
            .foregroundColor(.blue)
    }
}

struct CardView: View {
    @State var isFaceUp = true
    var content = "😃"
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture(perform: {
            isFaceUp = !isFaceUp
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
