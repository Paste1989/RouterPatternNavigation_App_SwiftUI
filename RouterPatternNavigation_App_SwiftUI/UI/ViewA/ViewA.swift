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
                router.push(.viewB("Got here from View A"))
            }
            .padding()
            
            Button("Present View **C** as Bottom Sheet") {
                router.presentingSheet = .viewC
            }
            .padding()
            
            
            Button("Present View **C** as Full Screen Cover") {
                router.presentingFullScreenCover = .viewC
            }
            .padding()
        }
        .navigationTitle("View A")
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
