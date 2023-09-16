//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-09.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    
    @StateObject var locationManager = LocationManger()
    
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
