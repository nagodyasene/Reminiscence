//
//  ReminiscenceApp.swift
//  Reminiscence
//
//  Created by Enes Aydoğan on 24.11.2026.
//

import SwiftUI
<<<<<<< HEAD

@main
struct ReminiscenceApp: App {
=======
import SwiftData

@main
struct ReminiscenceApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

>>>>>>> 956fc2907b78c5dc98d70d6841abf9e452759389
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
<<<<<<< HEAD
=======
        .modelContainer(sharedModelContainer)
>>>>>>> 956fc2907b78c5dc98d70d6841abf9e452759389
    }
}
