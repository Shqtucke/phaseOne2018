//
//  ViewController.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBOutlet var viewConstraint: NSLayoutConstraint!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var sideView: UIView!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        richMedia()
        
        //Added an alert here just for fun
        let alert = UIAlertController(title: "Welcome to Vegas", message: "Click Let's Go then Swipe Right to Begin!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Let's Go!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        let deleteAction = UIAlertAction(title: "Delete?", style: .destructive) { (action) in
            print("deleted")
        }
        
        alert.addAction(deleteAction)
        present(alert, animated: true)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        blurView.layer.cornerRadius = 15
        sideView.layer.shadowColor = UIColor.black.cgColor
        sideView.layer.shadowOpacity = 0.8
        sideView.layer.shadowOffset = CGSize(width: 5, height: 0)
        
        button1.layer.shadowColor = UIColor.black.cgColor
        button1.layer.shadowOpacity = 0.3
        button1.layer.shadowOffset = CGSize(width: 0.3 , height: 0)
        
        button2.layer.shadowColor = UIColor.black.cgColor
        button2.layer.shadowOpacity = 0.3
        button2.layer.shadowOffset = CGSize(width: 0.3 , height: 0)
        
        viewConstraint.constant = -123
        
        }
    
    func richMedia() {
        
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.subtitle = "Subtitle"
        content.body = "This is the body of my notifications"
        
        let url = Bundle.main.url(forResource: "Vegas", withExtension: "mov")
        
        if let url = url {
            let video = try? UNNotificationAttachment(identifier: "video", url: url, options: nil)
            
            if let video = video {
                content.attachments = [video]
            }
        }
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
        
        let request = UNNotificationRequest(identifier: "basic", content: content, trigger: trigger)
        
        center.add(request)
    }
    
    
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
 
    if sender.state == .began || sender.state == .changed {
            
          let translation = sender.translation(in: self.view).x
            
            if translation > 0 {     //swipe right
                
                if viewConstraint.constant < 20 {
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                        
                        
                    })
                }
                
            } else {              //swipe left
                
                if viewConstraint.constant > -123 {
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                    })
            }
        }
            
        } else if sender.state == .ended {
            if viewConstraint.constant < -100 {
                UIView.animate(withDuration: 0.2, animations: {
                    
                    self.viewConstraint.constant = -123
                    self.view.layoutIfNeeded()
                })
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConstraint.constant = 0
                    self.view.layoutIfNeeded()
                })
            }
        }
        
    }
    

    


}








