//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-14.
//

import Foundation

final class LocationManger: ObservableObject {
    @Published var locations: [DDGLocation] = []
}
