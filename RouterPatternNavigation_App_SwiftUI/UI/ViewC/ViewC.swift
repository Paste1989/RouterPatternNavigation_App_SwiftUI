//
//  ViewC.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import SwiftUI

struct ViewC: View {
    @EnvironmentObject var router: Router
    @ObservedObject var viewModel = ViewCVieModel()
    
    var body: some View {
        VStack() {
            Button("Go to View **B**") {
                router.push(.viewB("Got here from C"))
            }
            .padding()
            
            if router.presentingSheet != nil || router.presentingFullScreenCover != nil {
                Button("Dismiss") {
                    router.dismiss()
                }
            }
        }
        .navigationTitle("View C")
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
