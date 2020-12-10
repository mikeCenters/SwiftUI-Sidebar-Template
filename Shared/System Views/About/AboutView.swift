//
//  AboutView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/8/20.
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                /*
                 Main Content
                 */
                VStack(spacing: 20) {
                    AppScrollSectionView(titleText: "Test Button Section",
                                         bodyText: "This is a test button view.\n\nAnything can be done with the button, just pass the function into the handler.",
                                         buttonText: "Do Something",
                                         action: { }
                    )
                    
                    AppScrollSectionView(titleText: "Title Section 1",
                                         bodyText: "Body text goes here and it will resize the view as needed.\n\nEven multiline support is available!"
                    )
                    
                    AppScrollSectionView(titleText: "Title Section 2",
                                         bodyText: "Body text goes here and it will resize the view as needed.\n\nEven multiline support is available!"
                    )
                    
                    AppScrollSectionView(titleText: "Title Section 3",
                                         bodyText: "Body text goes here and it will resize the view as needed.\n\nEven multiline support is available!"
                    )
                }
            }
            
            /*
             Footer Content
             */
            AppInfoFooterView()
            
        }
        .navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AboutView()
        }
    }
}
