//
//  ContentView.swift
//  HibikiProject-1
//
//  Created by Zixi Zhao on 24/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        .foregroundColor(Color.blue)
        .padding()
        .font(Font.largeTitle)
    }
}
 
struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 5)
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)//adapt for night modewhen face up
                Text("👻")
            } else {
        
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 5)
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
            }
        }
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
