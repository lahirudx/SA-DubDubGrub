//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-14.
//

import MapKit

final class LocationMapViewModel: ObservableObject {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    @Published var alertItem: AlertItem?
    @Published var locations: [DDGLocation] = []
    
    func getLocations() {
        CloudKitManger.getLocations { [self] result in
            switch result {
            case .success(let locations):
                self.locations = locations
            case .failure(_):
                alertItem = AlertContext.unableToGetLocations
            }
        }
    }
}