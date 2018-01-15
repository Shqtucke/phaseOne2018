//
//  SearchViewController.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/14/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import MapKit

class SearchViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var addressTextfield: UITextField!
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addressTextfield.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        let addressGeocoder = CLGeocoder()
        addressGeocoder.geocodeAddressString(addressTextfield.text!) { (placemarks, error) in
            
            if error != nil {
                print(error)
                return
            }
            
            if let placemarks = placemarks {
                
                let firstPlacemark = placemarks[0]
                
                let annotation = MKPointAnnotation()
                if let location = firstPlacemark.location {
                    
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)
                }
            }
        }
        
        return true 
    }


}
