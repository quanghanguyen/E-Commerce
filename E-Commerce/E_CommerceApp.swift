//
//  E_CommerceApp.swift
//  E-Commerce
//
//  Created by Nguyen Quang Ha on 11/10/2022.
//

import SwiftUI

@main
struct E_CommerceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
