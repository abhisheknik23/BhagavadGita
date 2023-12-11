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

    var body: some View {
        NavigationView {
            Text("Select an item")
                .onAppear {
                    viewModel.onAppear()
                }
        }
    }

}
