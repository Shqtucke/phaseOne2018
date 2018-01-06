//
//  ViewController.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewConstraint: NSLayoutConstraint!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var sideView: UIView!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurView.layer.cornerRadius = 15
        sideView.layer.shadowColor = UIColor.black.cgColor
        sideView.layer.shadowOpacity = 1
        sideView.layer.shadowOffset = CGSize(width: 5, height: 0)
        
        button1.layer.shadowColor = UIColor.black.cgColor
        button1.layer.shadowOpacity = 0.3
        button1.layer.shadowOffset = CGSize(width: 0.3 , height: 0)
        
        button2.layer.shadowColor = UIColor.black.cgColor
        button2.layer.shadowOpacity = 0.3
        button2.layer.shadowOffset = CGSize(width: 0.3 , height: 0)
        
    }


    


}

