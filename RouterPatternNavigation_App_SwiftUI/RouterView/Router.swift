//
//  Router.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
    // Contains the possible destinations in our Router
    enum Route: Hashable {
        case viewA
        case viewB(String)
        case viewC
    }
    
    // Used to programatically control our navigation stack
    @Published var path: NavigationPath = NavigationPath()
    
    // Builds the views
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
        case .viewA:
            ViewA()
        case .viewB(let str):
            ViewB(description: str)
        case .viewC:
            ViewC()
        }
    }
    
    // Used by views to navigate to another view
    func navigateTo(_ appRoute: Route) {
        path.append(appRoute)
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
