//
//  LogoView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-16.
//

import SwiftUI

struct LogoView: View {
    
    let frameWidth: CGFloat
    
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(width: frameWidth)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(frameWidth: 125)
    }
}
