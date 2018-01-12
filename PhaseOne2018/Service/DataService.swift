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
    
        Casino(title: "Aria", description: "The Strip", imageButton: "Aria.jpeg", website: "https:www.aria.com"),
        Casino(title: "Ballys", description: "The Strip", imageButton: "ballys1.jpg", website: "https://www.aria.com"),
        Casino(title: "Bellagio", description: "The Strip", imageButton: "bellagio1.jpg", website: "https:www.aria.com"),
        Casino(title: "Caesars", description: "The Strip", imageButton: "caesars.jpg", website: "https://www.aria.com"),
        Casino(title: "Casino Royale", description: "The Strip", imageButton: "casinoR.jpg", website: "https://www.aria.com"),
        Casino(title: "Circus Circus", description: "The Strip", imageButton: "circus.jpg", website: "https:www.aria.com"),
        Casino(title: "Cosmopolitian", description: "The Strip", imageButton: "cosmo.jpg", website: "https://www.aria.com"),
        
        Casino(title: "Aria", description: "The Strip", imageButton: "Aria.jpeg", website: "https:www.aria.com"),
        Casino(title: "Ballys", description: "The Strip", imageButton: "ballys1.jpg", website: "https://www.aria.com"),
        Casino(title: "Bellagio", description: "The Strip", imageButton: "bellagio1.jpg", website: "https:www.aria.com"),
        Casino(title: "Caesars", description: "The Strip", imageButton: "caesars.jpg", website: "https://www.aria.com"),
        Casino(title: "Casino Royale", description: "The Strip", imageButton: "casinoR.jpg", website: "https://www.aria.com"),
        Casino(title: "Circus Circus", description: "The Strip", imageButton: "circus.jpg", website: "https:www.aria.com"),
        Casino(title: "Cosmopolitian", description: "The Strip", imageButton: "cosmo.jpg", website: "https://www.aria.com"),
        
    
    
    ]
    
    // MARK: - Casino return func
    func getCasinos() -> [Casino] {
        return casinos
    }
    
    
}
