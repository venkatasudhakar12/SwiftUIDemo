//
//  LocationHandler.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 25/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import Foundation
import CoreLocation

protocol LocationHandlerDelegate {
    func newLocation()
}
class LocationHandler:NSObject{
    static let shared = LocationHandler()
    var locationManager : CLLocationManager!
    private override init (){
        
    }
    private func locationSetUp(){
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        let status = CLLocationManager.authorizationStatus()
        if status == .denied || status == .notDetermined {
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startUpdatingLocation()
        locationManager.startUpdatingHeading()
    }
}
extension LocationHandler:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
 
}
