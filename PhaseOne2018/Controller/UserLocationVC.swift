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
    
    var locationManager = CLLocationManager()
    var oldLocation: CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Location"
        
        oldLocation = nil
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.distanceFilter = 20
        //locationManager.requestLocation()
        
        mapView.showsUserLocation = true
       
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let region = MKCoordinateRegionMakeWithDistance((locations.last?.coordinate)!, 1500, 1500)
        print(locations.last?.coordinate)
        
        mapView.setRegion(region, animated: true)
        
        if oldLocation == nil {
            oldLocation = locations.first
        }
        
        let newLocation = locations.last
        let distance = newLocation?.distance(from: oldLocation)
        
        if let distance = distance {
            distanceLabel.text = String(format: "%0.1f meters", distance)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }

}








