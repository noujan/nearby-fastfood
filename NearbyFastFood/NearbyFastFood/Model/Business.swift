//
//  Business.swift
//  NearbyFastFood
//
//  Created by Priscilla Ip on 2020-07-17.
//  Copyright © 2020 Priscilla Ip. All rights reserved.
//

import Foundation

struct Business: Codable, Identifiable {
    let id: String?
    let name: String?
    let price: String?
    let distance: Double?
    let imageUrl: String?
    let categories: [Categories]?
    let coordinates: Coordinates?
}

struct Categories: Codable {
    let alias: String?
    let title: String?
}

struct Coordinates: Codable {
    let latitude: Double
    let longitude: Double
}
    
//    private enum CodingKeys: String, CodingKey {
//        case imageURL = "image_url"
//        case id, name, distance
//    }
    
