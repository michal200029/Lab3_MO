//
//  SingleCard.swift
//  Lab3
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct CardView: View {
	var card: MemoGameModel<String>.Card
		
	init(_ card: MemoGameModel<String>.Card){self.card = card}
	
	var body: some View {
		ZStack{
			let base = RoundedRectangle(cornerRadius: 12)
			Group{
				base.fill(.white)
				base.strokeBorder(lineWidth: 2)
				Text(card.content).font(.system(size: 200))
					.minimumScaleFactor(0.01)
					.aspectRatio(1, contentMode: .fit)
			}.opacity(card.isFaceUp ? 1 : 0)
			base.fill().opacity(card.isFaceUp ? 0: 1)
		}
	}
}

struct CardView_Previews: PreviewProvider {
	static var previews: some View {
		let card = MemoGameModel<String>.Card(id: "1", isFaceUp: true, isMatched: false, content: "😀")
		CardView(card)
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
