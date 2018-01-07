//
//  DataService.swift
//  PhaseOne2018
//
//  Created by Shaun Tucker on 1/6/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import Foundation


class DataService {
    static let instance = DataService()
    
    
    private let casinos = [
    
        Casino(title: "Aria", description: "The Strip", imageButton: "1.png", website: "https:www.aria.com"),
        Casino(title: "Ballys", description: "The Strip", imageButton: "1.png", website: "https:www.aria.com"),
        Casino(title: "Bellagios", description: "The Strip", imageButton: "1.png", website: "https:www.aria.com"),
    
    
    ]
    
    // MARK: - Casino return func
    func getCasinos() -> [Casino] {
        return casinos
    }
    
    
}
