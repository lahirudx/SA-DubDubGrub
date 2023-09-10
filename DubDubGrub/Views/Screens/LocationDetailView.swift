//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-10.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(imageName: "default-banner-asset")
            
            HStack {
                AddressView(address: "B 25/1 B, Metiyagane, Beligala")
                Spacer()
            }
            .padding(.horizontal)
            
            DescriptionView(text: "This is the description. This is the description. This is the description. This is the description. This is the description.")
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                
                HStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }

                }
            }
            .padding(.horizontal)
            
            Text("Who is Here?")
                .font(.title2)
                .bold()
            
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                    FirstNameAvatarView(firstName: "Lahiru")
                }
            }
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    let color: Color
    let imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 60)
                .foregroundColor(color)
            Image(systemName: imageName)
                .font(.system(size: 22))
                .foregroundColor(.white)
        }
    }
}

struct FirstNameAvatarView: View {
    let firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            
            Text(firstName)
            .bold()
            .lineLimit(1)
            .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImageView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    
    let address: String
    
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
            .frame(height: 70)
    }
}
