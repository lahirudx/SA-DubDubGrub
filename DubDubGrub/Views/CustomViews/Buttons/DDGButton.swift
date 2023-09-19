//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-10.
//

import SwiftUI

struct DDGButton: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct DDGButton_Previews: PreviewProvider {
    static var previews: some View {
        DDGButton(title: "Create Profile")
    }
}
