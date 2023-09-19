//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-10.
//

import SwiftUI

extension View {
    func profileNameTextStyle() ->  some View {
        self.modifier(ProfileNameText())
    }
    
    func dismissKeyBoard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
