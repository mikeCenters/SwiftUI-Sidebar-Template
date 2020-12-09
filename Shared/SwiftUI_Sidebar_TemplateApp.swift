//
//  SwiftUI_Sidebar_TemplateApp.swift
//  Shared
//
//  Created by Mike Centers on 12/7/20.
//

import SwiftUI

@main
struct SwiftUI_Sidebar_TemplateApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SidebarView()
                
                MainView()
                
                // Uncomment for three tier navigation view (iPadOS, macOS)
//                Text("Detail View")
            }
        }
    }
}

/*
 Provide the structure of the @main App.
 */
struct Main_App_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SidebarView()
            
            MainView()
        }
    }
}
