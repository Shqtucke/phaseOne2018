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

class ReverseGEOVC: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var directionLabel: UILabel!
    
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Look for Addresses"
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.distanceFilter = 20
        
        mapView.showsUserLocation = true
        mapView.delegate = self
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let region = MKCoordinateRegionMakeWithDistance((locations.last?.coordinate)!, 5000, 5000)
        
        mapView.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print(error)
    }
    
    //Everytime we move we get the center coordinate
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        
        print(mapView.centerCoordinate)
        
        let location = CLLocation(latitude: mapView.centerCoordinate.latitude, longitude: mapView.centerCoordinate.longitude)
        
        let geocoder = CLGeocoder()
        geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
            
            if error != nil {
                
                print(error)
                
                return
            } else {
                
                if (placemarks?.count)! > 0 {
                    
                    let singlePlacemark = placemarks![0]
                    let addressDict = singlePlacemark.addressDictionary
                    
                    print(addressDict)
                    
                    let street = addressDict!["Street"] ?? ""
                    let address = addressDict!["Address"] ?? ""
                    let state = addressDict!["Thoroughfare"] ?? ""
                    let zip = addressDict!["Zip"] ?? ""
                    
                    self.directionLabel.text = "\(address) \(street) \(state) \(zip)"
                }
            }
        }
    }

}







