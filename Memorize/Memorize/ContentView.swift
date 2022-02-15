//
//  ContentView.swift
//  Memorize
//
//  Created by Imac21 on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
    }
}


struct CardView: View {
    var body: some View {
       RoundedRectangle(cornerRadius: 30)
            .fill()
            .foregroundColor(.white)
        RoundedRectangle(cornerRadius: 30)
            .stroke(lineWidth: 3)
        Text("😃")
            .font(.largeTitle)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
