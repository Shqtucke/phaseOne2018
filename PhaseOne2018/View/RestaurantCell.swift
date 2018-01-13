//
//  RestaurantCell.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/12/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class RestaurantCell: UICollectionViewCell {
    
    @IBOutlet var imageName: UIImageView!
    @IBOutlet var restaurantName: UILabel!
    @IBOutlet var restLocation: UILabel!
    
    func updateViews(restaurant: Restaurant) {
        imageName.image = UIImage(named: restaurant.imageName)
        restaurantName.text = restaurant.restaurant
        restLocation.text = restaurant.location
        
    }
    
    override func awakeFromNib() {
        imageName.layer.cornerRadius = 10
        imageName.clipsToBounds = true
        
    }
    
}
