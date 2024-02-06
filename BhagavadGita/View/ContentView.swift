//
//  ContentView.swift
//  BhagavadGita
//
//  Created by Abhishek Gupta on 14/11/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @ObservedObject var viewModel = ContentViewModel()

    var count = "1"
    var body: some View {
        NavigationView {
            VStack {
                Text(L10n.ContentView.bhagavadGitChapter(1))
                Text("ContentView.bhagavad_git_chapter \(count)")
            }
            .onAppear {
                viewModel.onAppear()
            }
        }
    }

}
