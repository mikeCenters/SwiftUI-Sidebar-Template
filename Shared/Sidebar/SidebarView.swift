//
//  SidebarView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/7/20.
//

import SwiftUI

struct SidebarView: View {
    var isTapped: Bool = false
    
    var body: some View {
        VStack {
            ScrollView {
                Text("Header Section")
                
                Text("Some body")
                
                
            }
            .background(Color.green)
            
            
            
            /*
             Footer Section
             */
            
            //MARK: FixMe:
            // - Icon should be center aligned.
            // - Text should be leading aligned.
            VStack(spacing: 15) {
                Divider()
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    NavigationLink(
                        destination: Text("About View"),
                        label: {
                            Label("About", systemImage: "info.circle")
                                .font(Font.title3.weight(.bold))
                        }
                    )
                    
                    
                    NavigationLink(
                        destination: Text("Contact View"),
                        label: {
                            Label("Contact", systemImage: "envelope")
                                .font(Font.title3.weight(.bold))
                        }
                    )
                    
                    
                    NavigationLink(
                        destination: Text("Destination 3"),
                        label: {
                            Label("Link 3", systemImage: "photo")
                                .font(Font.title3.weight(.bold))
                        }
                    )
                }
                .foregroundColor(.secondary)
            }
            .padding(.bottom, 20)
            
            
        }.navigationBarTitle("Sidebar Title")
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
