//
//  ContentView.swift
//  Shared
//
//  Created by Mike Centers on 12/7/20.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        Text("Detail View")
    }
}



struct ContentView: View {
    
    var body: some View {
        NavigationView {
            SidebarView()
            
            MainView()
            
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
