//
//  EmailRequiredView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/10/20.
//

import SwiftUI

struct EmailRequiredView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            /*
             Return Button
             */
            HStack {
                Spacer()
                Button("Return", action: {self.presentationMode.wrappedValue.dismiss()})
                    .font(Font.title3.weight(.semibold))
            }
            
            /*
             Setup Notification
             */
            Spacer()
            Image(systemName: "envelope")
                .font(Font.system(size: 125, weight: .semibold, design: .rounded))
                .foregroundColor(.blue)
            
            Text("To offer you in-app support, you will need to be able to send emails from your device. \n\nSetup the iOS mail app to get started.")
                .font(Font.title3.weight(.medium))
                .multilineTextAlignment(.center)
            
            Spacer()
        }.padding()
    }
}

struct EmailRequiredView_Previews: PreviewProvider {
    static var previews: some View {
        EmailRequiredView()
    }
}
