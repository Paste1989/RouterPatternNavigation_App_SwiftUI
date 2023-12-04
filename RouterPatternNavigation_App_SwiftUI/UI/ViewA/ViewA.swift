//
//  ViewA.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import SwiftUI

struct ViewA: View {
    @EnvironmentObject var router: Router
    @ObservedObject var viewModel = ViewAVieModel()
    
    var body: some View {
        VStack() {
            Button("Go to View **B**") {
                router.navigateTo(.viewB("Got here from View A"))
            }
            .padding()
            
            Button("Go to View **C**") {
                router.navigateTo(.viewC)
            }
        }
        .navigationTitle("View A")
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
