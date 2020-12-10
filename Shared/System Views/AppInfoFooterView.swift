//
//  AppInfoFooterView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/10/20.
//

import SwiftUI

struct AppInfoFooterView: View {
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
}
