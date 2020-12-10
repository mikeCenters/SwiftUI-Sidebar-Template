//
//  ProductsView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/10/20.
//

import SwiftUI

struct ProductsView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                /*
                 Main Content
                 */
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
             Footer Content
             */
            AppInfoFooterView()
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
