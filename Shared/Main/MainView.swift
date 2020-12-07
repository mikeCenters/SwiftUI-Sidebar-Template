//
//  MainView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/7/20.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        Text("Main View")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                MainView()
            }
            
            NavigationView {
                MainView()
                    .environment(\.colorScheme, .dark)
            }
        }
    }
}
