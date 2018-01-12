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
    
    private let aria = [
        Restaurant(restaurant: "The Buffet", location: "Buffet", imageName: "TheBuffet.jpg"),
        Restaurant(restaurant: "Herringbone", location: "Steak", imageName: "Herringbone.jpg"),
        Restaurant(restaurant: "Sage", location: "Buffet", imageName: "Sage.jpg"),
        Restaurant(restaurant: "Bardot Brasserie", location: "Lounge", imageName: "AlibiLounge.jpg"),
        Restaurant(restaurant: "JG Steakhouse", location: "Steak", imageName: "JGsteakhouse.jpg"),
        Restaurant(restaurant: "Aria Cafe", location: "American", imageName: "AriaC.jpg"),
        Restaurant(restaurant: "Jean", location: "American", imageName: "Jean.jpg"),
        Restaurant(restaurant: "Lemongrass", location: "Seafood", imageName: "Lemongrass.jpg"),
        Restaurant(restaurant: "Javiers", location: "American", imageName: "Javiers.jpg"),
        Restaurant(restaurant: "Julian", location: "American", imageName: "Julian.jpg"),
        Restaurant(restaurant: "Five50", location: "Pizza", imageName: "Five50.jpg"),
        
        ]
    
    private let ballys = [
        Restaurant(restaurant: "Blizz", location: "Yogurt", imageName: "Blizz.JPG"),
        Restaurant(restaurant: "BLT Steak", location: "American", imageName: "BltSteak.JPG"),
        Restaurant(restaurant: "Buca", location: "American", imageName: "Buca.jpg"),
        Restaurant(restaurant: "Burger Brasserie", location: "Burger", imageName: "BurgBra0.JPG"),
        Restaurant(restaurant: "Indigo Lounge", location: "Lounge", imageName: "IndigoLounge.JPG"),
        Restaurant(restaurant: "Johnny Rocket", location: "Fast Food", imageName: "JohnnyRocket.JPG"),
        Restaurant(restaurant: "Lavazza", location: "Italian", imageName: "LavAzza9.JPG"),
        Restaurant(restaurant: "Nathan's", location: "Fast Food", imageName: "Nathans9.JPG"),
        Restaurant(restaurant: "Nosh", location: "Deli", imageName: "Nosh.jpg"),
        Restaurant(restaurant: "Pan", location: "Chinese", imageName: "PanAsian.JPG"),
        Restaurant(restaurant: "sBarro", location: "Pizza", imageName: "SBarro.jpg"),
        Restaurant(restaurant: "Sea3", location: "Thai", imageName: "Sea3.JPG"),
        Restaurant(restaurant: "Shiver", location: "Frozen Cocktails", imageName: "Shiver8.JPG"),
        Restaurant(restaurant: "Sterling", location: "Upscale", imageName: "SterlingB.jpg"),
        Restaurant(restaurant: "Subway", location: "Eat Fresh", imageName: "Subway0.JPG"),
        Restaurant(restaurant: "Tequila", location: "Drinks", imageName: "Tequila.jpg")
    ]
    
    private let cromwell = [
        Restaurant(restaurant: "Eatwell", location: "Healthy", imageName: "eatwell.jpg"),
        Restaurant(restaurant: "Giada", location: "Chef Giada", imageName: "Giada.jpg"),
        Restaurant(restaurant: "Mobile Dinning", location: "Convenient", imageName: "mobileDinning.jpg")
    ]
    
    private let cosmo = [
        
        Restaurant(restaurant: "McDonalds", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "Burger King", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "Chilli's", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "PF Change", location: "the Strip", imageName: "casinoR.jpg")
        
    ]
    
    private let circus = [
        Restaurant(restaurant: "PF Change", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "PF Change", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "Meltdown city", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "Rush's", location: "the Strip", imageName: "casinoR.jpg")
        
    ]
    
    private let casinoR = [
        
        Restaurant(restaurant: "McDonalds", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "Burger King", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "Chilli's", location: "the Strip", imageName: "casinoR.jpg"),
        Restaurant(restaurant: "PF Change", location: "the Strip", imageName: "casinoR.jpg")
        
    ]
    
    // MARK: - Casino return func
    func getCasinos() -> [Casino] {
        return casinos
    }
    
    func getMyRestaurant(forRestaurantName casinoName: String) -> [Restaurant] {
        switch casinoName {
        case "Aria":
            return getAria()
        case "Ballys":
            return getBallys()
        case "Cromwell":
            return getCromwell()
        case "Cosmo":
            return getCosmo()
        case "Circus":
            return getCircus()
        case "CasinoR":
            return getCasinoR()
        default:
            return getCromwell()
        }
    }
        
        func getAria() -> [Restaurant] {
            return aria
        }
        
        func getBallys() -> [Restaurant] {
            return ballys
        }
        
        
        func getCromwell() -> [Restaurant] {
            return cromwell
        }
        
        func getCosmo() -> [Restaurant] {
            return cosmo
        }
        
        func getCircus() -> [Restaurant] {
            return circus
        }
        
        func getCasinoR() -> [Restaurant] {
            return casinoR
            
        }
    
    
}
