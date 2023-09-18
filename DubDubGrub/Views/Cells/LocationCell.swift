//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-10.
//

import SwiftUI

struct LocationCell: View {
    
    let location: DDGLocation
    
    var body: some View {
        HStack {
            Image(uiImage: location.createSquareImage())
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack {
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                    AvatarView(image: PlaceholderImage.avatar, size: 35)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(location: DDGLocation(record: MockData.location))
    }
}
