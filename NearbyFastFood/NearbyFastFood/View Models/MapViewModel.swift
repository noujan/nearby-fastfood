//
//  MapViewModel.swift
//  NearbyFastFood
//
//  Created by Priscilla Ip on 2020-07-21.
//  Copyright © 2020 Priscilla Ip. All rights reserved.
//

import MapKit

class MapViewModel: NSObject {
    
    func createAnnotation(on mapView: MKMapView, business: Business, subtitle: String?) {
        let annotation = MKPointAnnotation()
        annotation.title = business.name
        annotation.subtitle = subtitle
        if let lat = business.coordinates?.latitude, let lon = business.coordinates?.longitude {
            annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        }
        mapView.addAnnotation(annotation)
    }
    
    func createLocation(business: Business) -> CLLocationCoordinate2D? {
        guard let lat = business.coordinates?.latitude, let lon = business.coordinates?.longitude else { return nil }
        return CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
    
}
