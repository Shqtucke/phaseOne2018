//
//  CasinoViewController.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import SafariServices

class CasinoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tableView: UITableView!
    var urlArray = ["https://www.aria.com/en.html", "https://www.caesars.com/ballys-las-vegas", "https://www.bellagio.com/en.html", "https://www.caesars.com/cromwell", "http://www.casinoroyalehotel.com/", "https://www.circuscircus.com/en.html", "https://www.cosmopolitanlasvegas.com/"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()

        }
    
//TableView Animations
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //cell.alpha = 0
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransform
        
        UIView.animate(withDuration: 1.0) {() -> Void in
            
            //cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCasinos().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    if let cell = tableView.dequeueReusableCell(withIdentifier: "CasinoCell") as? CasinoCell {
        
        cell.casinoImage.clipsToBounds = true
        cell.casinoImage.layer.cornerRadius = cell.casinoImage.frame.height / 2
        //cell.casinoImage.layer.shadowColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        //cell.casinoImage.layer.shadowOpacity = 1
        //cell.casinoImage.layer.shadowOffset = CGSize.zero
        //cell.casinoImage.layer.shadowRadius = 5
        cell.layer.backgroundColor = UIColor.clear.cgColor
        
        let casino = DataService.instance.getCasinos()[indexPath.row]
            cell.updateViews(casino: casino)
        
        return cell
        } else {
            
            return CasinoCell()
        }
    }
    
   //Opens outside of your app
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let casino = DataService.instance.getCasinos()[indexPath.row]
        performSegue(withIdentifier: "RestaurantVC", sender: casino)
        
        //Added an alert here just for fun
        let alert = UIAlertController(title: "Casino Restaurants", message: "Here's a list of places to eat in this Casino!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Let's Eat!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let restaurantVC = segue.destination as? RestaurantVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Casino != nil)
            restaurantVC.initRestaurant(casino: sender as! Casino)
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let book = UITableViewRowAction(style: .default, title: "website") { (action, index) in
            let url = URL(string: self.urlArray[indexPath.row])
            
            if let url = url {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url)
                }
            }
            
        }
        book.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        return [book]

    }
    
}











