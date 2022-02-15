//
//  ContentView.swift
//  Memorize
//
//  Created by Imac21 on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            
            HStack{
                CardView()
                CardView()
                CardView()
                CardView()
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            
            HStack{
                CardView()
                CardView()
                CardView()
                CardView()
            }
            .padding(.horizontal)
            .foregroundColor(.red)
        }
        
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("😃").font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
