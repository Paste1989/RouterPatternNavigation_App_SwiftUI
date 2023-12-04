//
//  ContentView.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RouterView {
            TabbarView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
