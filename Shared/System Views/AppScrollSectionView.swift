//
//  AppScrollSectionView.swift
//  SwiftUI Sidebar Template (iOS)
//
//  Created by Mike Centers on 12/10/20.
//

import SwiftUI

/**
 System View for App Scroll Sections.
 */
struct AppScrollSectionView: View {
    private var titleText: String
    private var bodyText: String
    private var featuresText: [String]?
    private var buttonText: String?
    private var buttonAction: () -> Void
    
    
    var body: some View {
        VStack(spacing: 20) {
            /*
             Title and Body Text
             */
            VStack(alignment: .leading, spacing: 5) {
                Text(self.titleText)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Divider()
                    
                    Text(self.bodyText)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    
                }
            }
            
            /*
             Feature Text
             */
            if let features = self.featuresText {
                
                VStack(alignment: .center, spacing: 15) {
                    ForEach(features, id: \.self) { feature in
                        Label(
                            title: {
                                Text(feature)
                                    .multilineTextAlignment(.leading)
                            },
                            icon: {
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(.green)
                            }
                        ).font(.headline)
                    }
                }
                .padding(.horizontal, 50)
                
            }
            
            /*
             Button
             */
            if let buttonTitle = self.buttonText {
                
                Button(action: { self.buttonAction() }, label: {
                    HStack {
                        Spacer()
                        Text(buttonTitle)
                            .font(Font.title3.weight(.semibold))
                        Spacer()
                    }
                    .padding(.all, 14)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                })
                .padding(.horizontal)
                
            }
        }
    }
    /**
     System View for displaying information in a text and body style.
     
     - parameter title: A string value used for the title text.
     - parameter bodyText: A string value used for the body text.
     */
    init(titleText: String, bodyText: String) {
        self.titleText = titleText
        self.bodyText = bodyText
        self.buttonAction = {}
    }
    /**
     System View for displaying information in a text and body style with a button.
     
     - parameter title: A string value used for the title text.
     - parameter bodyText: A string value used for the body text.
     - parameter buttonText: A string value used for the button text.
     - parameter action: An action for the button.
     */
    init(titleText: String, bodyText: String, buttonText: String, action: @escaping () -> Void) {
        self.titleText = titleText
        self.bodyText = bodyText
        self.buttonText = buttonText
        self.buttonAction = { action() }
    }
    /**
     System View for displaying product information, features, and a button.
     
     - parameter title: A string value used for the title text.
     - parameter bodyText: A string value used for the body text.
     - parameter features: An array of string values for features.
     - parameter buttonText: A string value used for the button text.
     - parameter action: An action for the button.
     */
    init(titleText: String, bodyText: String, featuresText: [String], buttonText: String, action: @escaping () -> Void) {
        self.titleText = titleText
        self.bodyText = bodyText
        self.featuresText = featuresText
        self.buttonText = buttonText
        self.buttonAction = { action() }
    }
}
