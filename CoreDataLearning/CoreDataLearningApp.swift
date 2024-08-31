//
//  CoreDataLearningApp.swift
//  CoreDataLearning
//
//  Created by Jacob Kelly on 8/31/24.
//

import SwiftUI

@main
struct CoreDataLearningApp: App {
    @StateObject private var dataController: DataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
