//
//  Landmark.swift
//  AppleSwiftUI
//
//  Created by Alexandre Robaert on 30/12/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    private var coordinates: Coordinates
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitute, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitute: Double
        var longitude: Double
    }
}