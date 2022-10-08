//
//  PlannerlyApp.swift
//  Plannerly
//
//  Created by kishon daniels on 10/6/22.
//

import SwiftUI

@main
struct PlannerlyApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
            WindowGroup {
                NavigationView {
                    ListView()
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(listViewModel)
        }
    }
}
