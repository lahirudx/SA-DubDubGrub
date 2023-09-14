//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-09.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @StateObject private var vm = LocationMapViewModel()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.region)
                .ignoresSafeArea()
            
            VStack {
                LogoView()
                
                Spacer()
            }
        }
        .alert(item: $vm.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
        .onAppear {
            vm.getLocations()
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

struct LogoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(height: 70)
            .shadow(radius: 10)
    }
}
