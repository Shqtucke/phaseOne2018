//
//  Casino.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import Foundation


struct Casino {
    
    private(set) public var title: String
    private(set) public var description: String
    private(set) public var  imageButton: String
    private(set) public var website: String 
    
    init(title: String, description: String, imageButton: String, website: String ) {
        self.title = title
        self.description = description
        self.imageButton = imageButton
        self.website = website
    }
}
