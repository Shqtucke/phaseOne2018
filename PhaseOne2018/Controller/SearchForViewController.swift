//
//  SearchForViewController.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/15/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import MapKit

class SearchForViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var mapView: MKMapView!
    
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

         locationManager.delegate = self 
    }
    


    @IBAction func textfieldEndExit(_ sender: Any) {
        
        searchTextField.resignFirstResponder()
        
        mapView.removeAnnotations(mapView.annotations)
        
        
        
        let searchRequest = MKLocalSearchRequest()
        searchRequest.naturalLanguageQuery = searchTextField.text ?? "Pizza"
        
        searchRequest.region = mapView.region
        
        let mapSearch = MKLocalSearch(request: searchRequest)
        
        mapSearch.start { (searchResponse, error) in
            
            if error != nil {
                print(error)
                return
            }
            
            else if searchResponse!.mapItems.count == 0 {
                print("no results found")
            } else {
                
                for singleItem in searchResponse!.mapItems {
                    //print(singleItem)
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = singleItem.placemark.coordinate
                    annotation.title = singleItem.name ?? "No Name"
                    annotation.subtitle = singleItem.phoneNumber ?? "No Number"
                    
                    self.mapView.addAnnotation(annotation)
                }
            }
        }
        
    }


}
