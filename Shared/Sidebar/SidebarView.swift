//
//  SidebarView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/7/20.
//

import SwiftUI

/**
 Sidebar for iOS
 */
struct SidebarView: View {
    
    var appTitle: String = "App Title"
    
    var body: some View {
        VStack(spacing: 0) {
            /*
             Main Nav Links
             */
            
            /// Use a Geometry Reader to set the height of the scrollview to the parent view.
            /// This will cause the items to vertical center if the list doesn't fill the view.
            GeometryReader { geo in
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        NavigationLink(destination: MainView()) {
                            Label("Message", systemImage: "message")
                        }
                        .padding()
                        
                        NavigationLink(destination: MainView()) {
                            Label("Weather", systemImage: "cloud.sun")
                        }
                        .padding()
                        
                        NavigationLink(destination: MainView()) {
                            Label("Charge", systemImage: "bolt.car")
                        }
                        .padding()
                        
                        NavigationLink(destination: MainView()) {
                            Label("HealthCare", systemImage: "pills")
                        }
                        .padding()
                        
                        NavigationLink(destination: MainView()) {
                            Label("Ticket", systemImage: "ticket")
                        }
                        .padding()
                        
                        NavigationLink(destination: MainView()) {
                            Label("Calculator", systemImage: "function")
                        }
                        .padding()
                    }
                    .foregroundColor(.primary)
                    .font(Font.title3.weight(.semibold))
                    .frame(minHeight: geo.size.height)
                    .padding(.horizontal)
                }
            }
            
            
            /*
             Footer Nav Links
             */
            VStack(spacing: 25) {
                Divider()
                VStack(alignment: .center, spacing: 20) {
                    
                    NavigationLink(destination: AboutView()) {
                        Label("About", systemImage: "info.circle")
                    }
                    
                    NavigationLink(destination: SettingsView()) {
                        Label("Settings", systemImage: "gear")
                    }
                    
                    NavigationLink(destination: ProductsView()) {
                        Label("Products", systemImage: "cart")
                    }
                    
                    NavigationLink(destination: ContactUsView()) {
                        Label("Contact Us", systemImage: "envelope")
                    }
                }
            }
            .foregroundColor(.secondary)
            .font(.headline)
            .padding(.bottom)
            
        }
        .navigationBarTitle(self.appTitle, displayMode: .large)
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SidebarView()
        }
    }
}
