//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-09.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color(.secondarySystemBackground))
                    .padding(.horizontal)
                    .frame(height: 120)
                
                HStack {
                    ZStack {
                        AvatarView(size: 84)
                        
                        Image(systemName: "square.and.pencil")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .offset(y: 30)
                        
                        
                    }
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company Name", text: $companyName)
                    }
                }
                .padding(.horizontal, 32)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                Text("\(100 - bio.count)")
                    .font(.callout)
                    .bold()
                    .foregroundColor(bio.count <= 100 ?  .brandPrimary : Color(.systemPink))
                +
                Text(" characters remaining")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.secondary, lineWidth: 1)
                    }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Profile")
                    .bold()
                    .frame(width: 280, height: 44)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
