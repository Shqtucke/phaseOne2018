//
//  CasinoCell.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class CasinoCell: UITableViewCell {
    
    @IBOutlet var casinoImage: UIButton!
    @IBOutlet var casinoName: UILabel!
    @IBOutlet var casinoDescription: UILabel!
    
    func updateViews(casino: Casino) {
        //casinoImage.image = UIImage(named: casino.imageButton)
        casinoName.text = casino.title
        casinoDescription.text = casino.description
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
