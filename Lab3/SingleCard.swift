//
//  SingleCard.swift
//  Lab3
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct SingleCard: View {
    let content: String
    @State var isVisible: Bool = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isVisible ? 1 : 0)
                base.opacity(isVisible ? 0 : 1)
            }.padding()
            .onTapGesture(perform: {
                isVisible.toggle()
            })
        }
}

#Preview {
    SingleCard(content: "aa")
}
