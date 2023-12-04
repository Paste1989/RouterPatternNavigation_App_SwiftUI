//
//  A-View.swift
//  RouterPatternNavigation_App_SwiftUI
//
//  Created by Saša Brezovac on 04.12.2023..
//

import SwiftUI

struct A_View: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is **View A**")
                    .padding(.bottom, 50)
                
                NavigationLink("Go to **View B**", value: 1)
            }
            .navigationDestination(for: Int.self) { _ in
                B_View()
            }
        }
    }
}

struct A_View_Previews: PreviewProvider {
    static var previews: some View {
        A_View()
    }
}
