//
//  OnboardView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-16.
//

import SwiftUI

struct OnboardView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack() {
            HStack {
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    XDismissButton()
                }
                .padding()

            }
            
            Spacer()
            
            LogoView(frameWidth: 200)
                .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 32) {
                OnboardingInfoView(imageName: "building.2.crop.circle",
                                   title: "Restaurant Locations",
                                   description: "Find places to dine around the convention centre")
                                
                OnboardingInfoView(imageName: "checkmark.circle",
                                   title: "Check In",
                                   description: "Let other iOS Devs know where you are.")
                
                OnboardingInfoView(imageName: "person.2.circle",
                                   title: "Find Friends",
                                   description: "See where other iOS Devs are and join the party.")
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

struct OnboardingInfoView: View {
    
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.system(size: 50))
                .foregroundColor(.brandPrimary)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title).bold()
                
                Text(description)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.75)
            }
        }
    }
}
