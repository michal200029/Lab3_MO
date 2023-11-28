
import SwiftUI

struct Theme: View {
	let themeName: String
	let themeImage: String
	@ObservedObject var viewModel: MyMemoGameViewModel
	var body: some View {
		Button(action: {
			viewModel.selectedTheme = themeName
			viewModel.changeTheme()
			viewModel.shuffle()
		}) {
			VStack {
				Image(systemName: themeImage)
					.font(.system(size: 24))
				Text(themeName)
					.font(.caption)
			}
		}.foregroundColor(viewModel.themeColor)
	}
	
}

#Preview {
	Theme(themeName: "Motyw 1", themeImage: "face.smiling", viewModel: MyMemoGameViewModel())
}
