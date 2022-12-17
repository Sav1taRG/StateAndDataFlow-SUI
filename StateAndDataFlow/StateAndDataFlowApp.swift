//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(storageManager)
        }
    }
}
