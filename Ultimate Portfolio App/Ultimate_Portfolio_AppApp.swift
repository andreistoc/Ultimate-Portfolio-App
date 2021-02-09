//
//  Ultimate_Portfolio_AppApp.swift
//  Ultimate Portfolio App
//
//  Created by Andrei Istoc on 09.02.2021.
//

import SwiftUI

@main
struct Ultimate_Portfolio_AppApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, dataController.container.viewContext).environmentObject(dataController)
        }
    }
}
