//
//  ContentView.swift
//  Lab3
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var cardCount = 16
    @State var emoijs = ["😀", "😃", "😄", "😁", "⚽️","🎱","🌍", "💐", "❄️","😀", "😃", "😄", "😁", "⚽️","🎱","🌍", "💐", "❄️"]
    @State var motyw = "Motyw 1"
    var body: some View {
        Text("Memo").font(.largeTitle)
        VStack {
            ScrollView {
                cardDisplay
            }
            HStack {
                //removeCardButton
                //Spacer()
                //addCardButton
                motywy
                
            }
        }.padding()
    }
    
    var motywy: some View {
        HStack {
            Motyw(themeImage: "face.smiling", themeName: "Motyw 1", emoijs: $emoijs, selectedMotyw: $motyw)
            Spacer()
            Motyw(themeImage: "face.smiling.inverse", themeName: "Motyw 2", emoijs: $emoijs, selectedMotyw: $motyw)
            Spacer()
            Motyw(themeImage: "facemask", themeName: "Motyw 3", emoijs: $emoijs, selectedMotyw: $motyw)
        }
    }
    
        
        var addCardButton: some View {
            adjustCardNumber(by: 2, symbol: "+")
        }
        
        var removeCardButton: some View {
            adjustCardNumber(by: 2, symbol: "-")
        }
    
        
        var cardDisplay : some View {
            LazyVGrid(columns:[GridItem(.adaptive(minimum: 80))]) {
                ForEach(0..<cardCount, id: \.self) {
                    i in SingleCard(content: emoijs[i]).aspectRatio(2/3, contentMode: .fit)
                }
            }.foregroundColor(motyw == "Motyw 1" ? .red : motyw == "Motyw 2" ? .blue : motyw == "Motyw 3" ? .green : .gray)
        }
    
    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
        if (symbol == "+") {
            return Button("+") {
                if cardCount + offset < emoijs.count  {
                    cardCount += offset
                }
            }
        } else {
            return Button("-") {
                if cardCount > offset  {
                    cardCount -= offset
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
