//
//  UserLocationVC.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/15/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import MapKit

class UserLocationVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var distanceLabel: UILabel!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()

        mapView.showsUserLocation = true
       
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let region = MKCoordinateRegionMakeWithDistance((locations.last?.coordinate)!, 1500, 1500)
        
        mapView.setRegion(region, animated: true)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }

}
