//
//  AomgSocialNetworkApp.swift
//  AomgSocialNetwork
//
//  Created by David Goggins on 2023/05/21.
//

import SwiftUI

@main
struct AomgSocialNetworkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData) // Not// ModelData / Check!
        }
    }
}
