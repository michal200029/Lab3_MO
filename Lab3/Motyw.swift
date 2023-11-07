
import SwiftUI

struct Motyw: View {
    let themeImage: String
    let themeName: String
    @Binding var emoijs: [String]
    @Binding var selectedMotyw: String
    var body: some View {
            Button(action: {
                selectedMotyw = themeName
                switch selectedMotyw {
                    case "Motyw 1": emoijs = ["😀", "😛", "😝", "😇", "⚽️","🎱","🌍", "💐", "❄️","😀", "😛", "😝", "😇", "⚽️","🎱","🌍", "💐", "❄️"].shuffled()
                    case "Motyw 2": emoijs = ["🥖", "🧀", "🥩", "🥑", "🧈","🍎","🥬", "🍋", "🍔","😀", "😛", "😝", "😇", "⚽️","🎱","🌍", "💐", "❄️"].shuffled()
                    default: emoijs = ["🇧🇭", "🇨🇿", "🇦🇲", "🇧🇦", "🇨🇱","🇧🇮","🏴‍☠️", "🇧🇬", "🇪🇸","😀", "😛", "😝", "😇", "⚽️","🎱","🌍", "💐", "❄️"].shuffled()
                }
            }) {
                VStack {
                    Image(systemName: themeImage).font(.system(size: 20))
                    Text(themeName).font(.system(size: 18))
                }
        }.foregroundColor(selectedMotyw == "Motyw 1" ? .red : selectedMotyw == "Motyw 2" ? .blue : selectedMotyw == "Motyw 3" ? .green : .gray)
    }
}

#Preview {
    Motyw(themeImage:"face.smiling", themeName:"Motys 1",emoijs: .constant([]), selectedMotyw: .constant("Motyw 1"))
}
