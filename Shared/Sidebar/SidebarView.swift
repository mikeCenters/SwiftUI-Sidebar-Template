//
//  SidebarView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/7/20.
//

import SwiftUI

struct SidebarView: View {
    
    var body: some View {
        ScrollView {
            Text("Sidebar View")
            
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SidebarView()
            }
            
            NavigationView {
                SidebarView()
                    .environment(\.colorScheme, .dark)
            }
        }
    }
}
