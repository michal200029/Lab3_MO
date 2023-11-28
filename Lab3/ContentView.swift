//
//  ContentView.swift
//  Lab3
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject var viewModel: MyMemoGameViewModel
    //@State var emoijs = ["😀", "😃", "😄", "😁", "⚽️","🎱","🌍", "💐", "❄️","😀", "😃", "😄", "😁", "⚽️","🎱","🌍", "💐", "❄️"]
    @State var motyw = "Motyw 1"
    var body: some View {
        Text("Memo").font(.largeTitle)
        VStack {
            ScrollView {
                cardDisplay
            }
			Button("Shuffle"){
				viewModel.shuffle()
			}.foregroundColor(viewModel.themeColor)
			themes
        }.padding()
    }
    
    var themes: some View {
        HStack {
			Theme(themeName: "Motyw 1", themeImage: "face.smiling", viewModel: viewModel)
            Spacer()
			Theme(themeName: "Motyw 2", themeImage: "face.smiling.inverse", viewModel: viewModel)
            Spacer()
			Theme(themeName: "Motyw 3", themeImage: "facemask", viewModel: viewModel)
        }
    }
	
	var cardDisplay : some View {
		LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0){
			ForEach(viewModel.cards){ card in
				CardView(card)
					.aspectRatio(2/3, contentMode: .fit)
					.padding(4)
					.onTapGesture {
						viewModel.choose(card)
					}
			}
		}.foregroundColor(viewModel.themeColor)
	}
	
}


#Preview {
	ContentView( viewModel: MyMemoGameViewModel())
}
