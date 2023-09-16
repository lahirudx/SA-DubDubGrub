//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-09.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @EnvironmentObject private var locationManger: LocationManger
    @StateObject private var vm = LocationMapViewModel()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.region, annotationItems: locationManger.locations, annotationContent: { location in
                MapMarker(coordinate: location.location.coordinate, tint: .brandPrimary)
            })
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
            if locationManger.locations.isEmpty {
                vm.getLocations(for: locationManger)
            }
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
