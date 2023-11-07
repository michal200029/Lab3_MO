//
//  MotywButton.swift
//  Lab3
//
//  Created by student on 07/11/2023.
//

import SwiftUI

struct Motyw: View {
    @Binding val emoijs: [String]
    @Binding val motyw: String
    public var motywDispaly : some View {
        HStack {
            addButton(symbol: "♦︎", text: "Motyw 1")
            Spacer()
            addButton(symbol: "♥︎", text: "Motyw 2")
            Spacer()
            addButton(symbol: "♠︎", text: "Motyw 3")
        }
    }
    
    private func addButton(symbol: String, text: String, motyw: String) -> some View {
        return VStack{
            Button(symbol) {
            action: {
            
                switch motyw {
                case "1":["😀", "😛", "😝", "😇", "⚽️","🎱","🌍", "💐", "❄️"].shuffled()
                case "2":["🥖", "🧀", "🥩", "🥑", "🧈","🍎","🥬", "🍋", "🍔"].shuffled()
                default :["🇧🇭", "🇨🇿", "🇦🇲", "🇧🇦", "🇨🇱","🇧🇮","🏴‍☠️", "🇧🇬", "🇪🇸"].shuffled()
                }
            }
                Text(text).font(.title3)
            }
        }
    }
}
