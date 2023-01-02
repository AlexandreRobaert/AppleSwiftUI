//
//  AppleSwiftUIApp.swift
//  AppleSwiftUI
//
//  Created by Alexandre Robaert on 30/12/22.
//

import SwiftUI

@main
struct AppleSwiftUIApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
