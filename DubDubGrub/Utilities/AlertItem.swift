//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-14.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    // MARK: - MapView Errors
    static let unableToGetLocations = AlertItem(title: Text("Locations Error"), message: Text("Unable to retrieve location at this time.\nPlease try again"), dismissButton: .default(Text("Ok")))
}
