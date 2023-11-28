//
//  Lab3App.swift
//  Lab3
//
//  Created by student on 17/10/2023.
//

import SwiftUI

@main
struct Lab3App: App {
	@StateObject var game = MyMemoGameViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
