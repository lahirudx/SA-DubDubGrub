//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-10.
//

import SwiftUI

struct AvatarView: View {
    let image: UIImage
    var size: CGFloat = 22
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: PlaceholderImage.avatar, size: 90)
    }
}
