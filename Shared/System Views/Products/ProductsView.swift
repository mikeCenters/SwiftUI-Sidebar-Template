//
//  ProductsView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/10/20.
//

import SwiftUI

struct ProductsView: View {
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
                    AppScrollSectionView(titleText: "Test Purchase Section 1",
                                         bodyText: "This is a test purchase button.",
                                         featuresText: ["Feature 1", "Feature 2"],
                                         buttonText: "Button Title",
                                         action: { }
                    )
                    
                    VStack {
                        AppScrollSectionView(titleText: "Test Purchase Section 2",
                                             bodyText: "This is a test purchase button. Disclure is provided in a parent VStack.",
                                             featuresText: ["Feature 1", "Feature 2"],
                                             buttonText: "Button Title",
                                             action: { }
                        )
                        
                        Text("By clicking \("<\"Insert Button Title\">"), you are enrolling in automatic payments of \("<Insert Price from SKProduct>")/month (plus tax, where applicable) that will continue until you cancel. Cancel anytime, effective at the end of your billing period. No refunds or credits for partial months.\n\nBy clicking \"Agree & Subscribe\" above, you also agree to the Terms of Service, and acknowledge that you have read our Privacy Policy")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondary)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.caption)
                            .padding(.horizontal)
                    }
                    
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
        .navigationTitle("Products")
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProductsView()
        }
    }
}
