//
//  TabbarView.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import SwiftUI

struct TabbarView: View {
    //enum for Tabs, add other tabs if needed
    enum Tab {
      case aView, bView, cView
     }
    
    @State private var selectedTab: Tab = .aView
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ViewA()
                .tabItem {
                    Label("A", systemImage: "a.circle.fill")
                }
                .tag(Tab.aView)
            
            ViewB(description: "")
                .tabItem {
                    Label("B", systemImage: "b.circle.fill")
                }
                .tag(Tab.bView)
            
            ViewC()
                .tabItem {
                    Label("C", systemImage: "c.circle.fill")
                }
                .tag(Tab.cView)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
