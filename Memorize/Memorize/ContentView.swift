//
//  ContentView.swift
//  Memorize
//
//  Created by Imac21 on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😗", "😡", "😐", "😝", "🤓", "😊", "😣", "😝", "☹️"]
    @State var emojiCount = 3
    var body: some View {
        VStack {
            HStack{
                ForEach(emojis[0...emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
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
            emojiCount += 1
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
    
    var remove: some View {
        Button(action: {
            emojiCount -= 1
            
        }, label: {
            Image(systemName: "minus.circle")
        })
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
