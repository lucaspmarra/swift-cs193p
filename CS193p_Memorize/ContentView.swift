//
//  ContentView.swift
//  CS193p_Memorize
//
//  Created by Lucas Marra on 06/11/24.
//

import SwiftUI

var count: Int = 0;

struct ContentView: View {
    
    var body: some View {
        HStack(content: {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        })
        
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
