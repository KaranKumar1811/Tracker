//
//  Location.swift
//  Tracker
//
//  Created by Sandeep Jangra on 2021-05-04.
//

import Foundation
struct Location: Decodable,Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Great Mountains", country: "US", description: "Great Place to Visit", more: "More Text Here", latitude: 35.5646, longitude: 34.5455, heroPicture: "smokies", advisory: "Be aware of the bears")
}
