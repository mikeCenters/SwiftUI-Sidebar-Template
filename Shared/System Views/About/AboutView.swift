//
//  AboutView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/8/20.
//

import SwiftUI

struct AboutView: View {
    private var appVersionText: String  {
        guard let appVersionString = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        else {
            fatalError("App Version not found in bundle")
        }
        return appVersionString
    }
    
    private var privacyPolicyURL = URL(string: "https://www.google.com")!
    private var termsServiceURL = URL(string: "https://www.google.com")!
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                
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
             Footer
             */
            VStack(spacing: 15) {
                Divider()
                VStack {
                    HStack(spacing: 20) {
                        Link(destination: self.privacyPolicyURL, label: {
                            Text("Privacy Policy")
                        })
                        
                        Divider()
                        
                        Link(destination: self.termsServiceURL, label: {
                            Text("Terms of Service")
                        })
                    }
                    .frame(maxWidth: .infinity, maxHeight: 25, alignment: .center)
                    
                    Text("App Version: \(self.appVersionText)")
                }
                .font(Font.caption.weight(.semibold))
                .foregroundColor(.secondary)
            }
            
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
