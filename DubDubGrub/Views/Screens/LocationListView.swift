//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-09.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var locationManager: LocationManger
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.locations) { location in
                    NavigationLink {
                        LocationDetailView(location: location)
                    } label: {
                        LocationCell(location: location)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
