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
                router.navigateTo(.viewB("Got here from C"))
            }
            .padding()
            
            
            Button("Go back") {
               router.navigateBack()
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
