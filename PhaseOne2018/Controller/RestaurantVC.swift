//
//  RestaurantVC.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/12/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class RestaurantVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private(set) public var restaurants = [Restaurant]()
    @IBOutlet var restaurantCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restaurantCollection.dataSource = self
        restaurantCollection.delegate = self
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

    func initRestaurant(casino: Casino) {
        restaurants = DataService.instance.getMyRestaurant(forRestaurantName: casino.title)
        navigationItem.title = casino.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantCell", for: indexPath) as? RestaurantCell{
            
            cell.contentView.clipsToBounds = false
            cell.contentView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            cell.contentView.layer.shadowOpacity = 1
            cell.contentView.layer.shadowOffset = CGSize.zero
            cell.contentView.layer.shadowRadius = 10
            cell.imageName.clipsToBounds = true
            cell.imageName.layer.cornerRadius = 10
            
            let restuarant = restaurants[indexPath.row]
            cell.updateViews(restaurant: restuarant)
            return cell
        }
        
        return RestaurantCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        //cell.alpha = 0
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransform
        
        UIView.animate(withDuration: 1.0) {() -> Void in
            
            //cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }
    //To move to MenuVC
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let restaurant = restaurants[indexPath.row]
        performSegue(withIdentifier: "MenuVC", sender: restaurant)
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let menuVC = segue.destination as? MenuVC {
//
//            assert(sender as? Restaurant != nil)
//            menuVC.initMenu(menu: sender as! Restaurant)
//        }
//    }
    
    
}

