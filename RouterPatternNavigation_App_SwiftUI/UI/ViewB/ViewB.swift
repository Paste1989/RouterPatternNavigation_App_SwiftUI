//
//  ViewB.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import SwiftUI

struct ViewB: View {
    @EnvironmentObject var router: Router
    @ObservedObject var viewModel = ViewBVieModel()
    let description: String
    
    var body: some View {
        VStack() {
            Text(description)
            Button("Go to View **A**") {
                router.push(.viewA)
            }
            .padding()
            
            Button("Go to View **C**") {
                router.push(.viewC)
            }
        }
        .navigationTitle("View B")
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB(description: "")
    }
}
