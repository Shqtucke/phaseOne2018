//
//  ReverseGEOVC.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/15/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ReverseGEOVC: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var directionLabel: UILabel!
    
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Show Address"
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.distanceFilter = 20
        
        mapView.showsUserLocation = true
        
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let region = MKCoordinateRegionMakeWithDistance((locations.last?.coordinate)!, 5000, 5000)
        
        mapView.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print(error)
    }

}
