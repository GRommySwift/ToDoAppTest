//
//  Location.swift
//  ToDoApp
//
//  Created by Roman Holovai on 25.12.2021.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}

extension Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool { // Lhs - left hand side(right)
        guard rhs.coordinate?.latitude == lhs.coordinate?.latitude &&
                lhs.coordinate?.longitude == rhs.coordinate?.longitude &&
                lhs.name == rhs.name else { return false }
        return true
    }
}
