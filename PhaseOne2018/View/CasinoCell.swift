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
        
        casinoName.layer.cornerRadius = 15
        casinoName.layer.borderColor = UIColor.darkGray.cgColor
        casinoName.layer.borderWidth = 1
        casinoName.layer.backgroundColor = UIColor.lightGray.cgColor
        casinoDescription.layer.cornerRadius = 15
        casinoDescription.layer.borderColor = UIColor.black.cgColor
        casinoDescription.layer.borderWidth = 1
        casinoDescription.layer.backgroundColor = UIColor.lightGray.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
