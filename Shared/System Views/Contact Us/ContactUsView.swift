//
//  ContactUsView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/8/20.
//

import SwiftUI
import MessageUI

struct ContactUsView: View {
    @State private var emailRecipients: [String] = []
    @State private var emailSubject: String = ""
    
    
    @State private var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView: Bool = false
    private var canSendEmails: Bool {
        return MFMailComposeViewController.canSendMail()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                /*
                 Main Content
                 */
                Image(systemName: "person.fill.questionmark")
                    .font(.system(size: 125, weight: .medium))
                    .foregroundColor(.blue)
                    .padding(.leading, 125 / 4)  // Offset image based on font size.
                
                VStack(spacing: 20) {
                    AppScrollSectionView(titleText: "Need Help?",
                                         bodyText: "Contact support for any issues regarding the use of this app.",
                                         buttonText: "Contact Support",
                                         action: {
                                            self.emailRecipients = ["example@email.com"]
                                            self.emailSubject = "Support: "
                                            self.isShowingMailView.toggle()
                                         }
                    )
                    
                    AppScrollSectionView(titleText: "Feature Request",
                                         bodyText: "Help drive the direction of this app by submitting a feature request.",
                                         buttonText: "Request Feature",
                                         action: {
                                            self.emailRecipients = ["example@email.com"]
                                            self.emailSubject = "Feature Request: "
                                            self.isShowingMailView.toggle()
                                         }
                    )
                    
                    AppScrollSectionView(titleText: "Feedback",
                                         bodyText: "While this app is tested heavily prior to release, errors within any app are possible. Issue feedback for app errors you may have found.",
                                         buttonText: "Issue Feedback",
                                         action: {
                                            self.emailRecipients = ["example@email.com"]
                                            self.emailSubject = "Feedback: "
                                            self.isShowingMailView.toggle()
                                         }
                    )
                }
            }
            
            /*
             Footer Content
             */
            AppInfoFooterView()
        }
        .navigationTitle("Contact Us")
        .sheet(isPresented: $isShowingMailView) {
            if self.canSendEmails {
                MailView(result: self.$result,
                         recipients: self.emailRecipients,
                         subject: self.emailSubject)
            } else {
                EmailRequiredView()
            }
        }
    }
}

struct ContactUsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContactUsView()
        }
    }
}
