//
//  Router.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
    // Navigation types
    enum NavigationType {
        case push
        case sheet
        case fullScreenCover
    }
    
    // Contains the possible destinations in our Router
    enum Route: Hashable, Identifiable {
        case viewA
        case viewB(String)
        case viewC
        
        var id: UUID {
            UUID() // Provide a unique identifier for each case
        }
    }
    
    // Used to programatically control our navigation stack
    @Published var path: NavigationPath = NavigationPath()
    // Used to present a view using a sheet
    @Published var presentingSheet: Route?
    // Used to present a view using a full screen cover
    @Published var presentingFullScreenCover: Route?
    
    // Builds the views
    @ViewBuilder func view(for route: Route, type: NavigationType) -> some View {
        switch route {
        case .viewA:
            ViewA()
        case .viewB(let str):
            ViewB(description: str)
        case .viewC:
            ViewC()
        }
    }
    
    // Return the appropriate Router instance based on `NavigationType`
    func router(navigationType: NavigationType) -> Router {
        switch navigationType {
        case .push, .sheet, .fullScreenCover:
            return self
        }
    }
    
    // Dismisses presented screen or self
    func dismiss() {
        if !path.isEmpty {
            path.removeLast()
        } else if presentingSheet != nil {
            presentingSheet = nil
        } else if presentingFullScreenCover != nil {
            presentingFullScreenCover = nil
        }
    }
    
    // Used by views to navigate to another view
    func push(_ route: Route) {
            path.append(route)
        }
    
    // Used to go back to the previous screen
    func navigateBack() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    // Pop to the root screen in our hierarchy
    func popToRoot() {
        path.removeLast(path.count)
    }
}
