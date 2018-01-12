//
//  Restaurant.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/12/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import Foundation


struct Restaurant {
    private(set) public var restaurant: String
    private(set) public var location: String
    private(set) public var imageName: String
    
    init(restaurant: String, location: String, imageName: String) {
        self.restaurant = restaurant
        self.location = location
        self.imageName = imageName
        
  }
}
