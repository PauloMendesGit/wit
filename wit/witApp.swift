//
//  witApp.swift
//  wit
//
//  Created by Paulo Mendes on 01/12/2022.
//

import SwiftUI

@main
struct witApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
