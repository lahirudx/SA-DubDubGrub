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
    @State private var avatar = PlaceholderImage.avatar
    @State private var isShowingPhotoPicker = false
    
    var body: some View {
        VStack {
            ZStack {
                NameBackgroundView()
                
                HStack {
                    ZStack {
                        AvatarView(image: avatar, size: 84)
                        EditImage()
                    }
                    .onTapGesture {
                        isShowingPhotoPicker = true
                    }
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .profileNameTextStyle()
                        
                        TextField("Last Name", text: $lastName)
                            .profileNameTextStyle()
                        
                        TextField("Company Name", text: $companyName)
                    }
                }
                .padding(.horizontal, 32)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                
                CharactersRemainView(currentCount: bio.count)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .padding(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.secondary, lineWidth: 1)
                    }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button {
                
            } label: {
                DDGButton(title: "Create Profile")
            }

        }
        .navigationTitle("Profile")
        .sheet(isPresented: $isShowingPhotoPicker) {
            PhotoPicker(image: $avatar)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}

struct NameBackgroundView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(.secondarySystemBackground))
            .padding(.horizontal)
            .frame(height: 120)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .font(.system(size: 16))
            .foregroundColor(.white)
            .offset(y: 30)
    }
}

struct CharactersRemainView: View {
    
    let currentCount: Int
    
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - currentCount)")
            .font(.callout)
            .bold()
            .foregroundColor(currentCount <= 100 ?  .brandPrimary : Color(.systemPink))
        +
        Text(" characters remaining")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}
