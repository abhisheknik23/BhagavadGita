//
//  BhagavadGitaApp.swift
//  BhagavadGita
//
//  Created by Abhishek Gupta on 14/11/23.
//

import SwiftUI

@main
struct BhagavadGitaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
