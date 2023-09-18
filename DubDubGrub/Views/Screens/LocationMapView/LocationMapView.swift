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
            Map(coordinateRegion: $vm.region, showsUserLocation: true, annotationItems: locationManger.locations, annotationContent: { location in
                MapMarker(coordinate: location.location.coordinate, tint: .brandPrimary)
            })
            .accentColor(.grubRed)
            .edgesIgnoringSafeArea(.top)
            VStack {
                LogoView(frameWidth: 125)
                    .shadow(radius: 10)
                
                Spacer()
            }
        }
        .sheet(isPresented: $vm.isShowingOnboardView, content: {
            OnboardView()
        })
        .alert(item: $vm.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
        .onAppear {
            vm.runStartupChecks()
            
            if locationManger.locations.isEmpty {
                vm.getLocations(for: locationManger)
            }
        }
        .onChange(of: vm.isShowingOnboardView) { newValue in
            print(newValue)
        }
        
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
