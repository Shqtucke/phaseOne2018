//
//  CasinoCell.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class CasinoCell: UITableViewCell {
    
   
    @IBOutlet var casinoImage: UIImageView!
    @IBOutlet var casinoName: UILabel!
    @IBOutlet var casinoDescription: UILabel!
    
    func updateViews(casino: Casino) {
        //casinoImage.image = UIImage(named: casino.imageButton)
        casinoImage.image = UIImage(named: casino.imageButton)
        casinoName.text = casino.title
        casinoDescription.text = casino.description
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        casinoImage.layer.cornerRadius = casinoImage.frame.height / 2
        casinoName.layer.cornerRadius = 15
        casinoName.layer.borderColor = UIColor.white.cgColor
        casinoName.layer.borderWidth = 1
        casinoName.layer.backgroundColor = UIColor.black.cgColor
        casinoDescription.layer.cornerRadius = 15
        casinoDescription.layer.borderColor = UIColor.white.cgColor
        casinoDescription.layer.borderWidth = 1
        casinoDescription.layer.backgroundColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
