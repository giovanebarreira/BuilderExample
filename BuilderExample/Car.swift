//
//  Car.swift
//  BuilderExample
//
//  Created by Giovane Barreira on 4/4/20.
//  Copyright © 2020 Giovane Barreira. All rights reserved.
//

import Foundation
import UIKit

protocol CarBluePrint {
    var color: UIColor { get set }
    var numberOfSeats: UInt8 { get set }
    var numberOfWheels: UInt8 { get set }
    var type: CarType { get set }
    var gearType: GearType { get set }
    var motor: Motor { get set }
    var shouldHasAirbags: Bool { get set }
    // adding the new property
    var batteryName: String { get set }
}

enum CarType {
    case sportage
    case saloon
}

enum GearType {
    case manual
    case automatic
}

struct Motor {
    var id: String
    var name: String
    var model: String
    var numberOfCylinders: UInt8
}

class Car: CustomStringConvertible, CarBluePrint {
    
    var color: UIColor
    var numberOfSeats: UInt8
    var numberOfWheels: UInt8
    var type: CarType
    var gearType: GearType
    var motor: Motor
    var shouldHasAirbags: Bool
    var batteryName: String
    
   var description: String {
        return "color: \(color)\nNumber of seats: \(numberOfSeats)\nNumber of Wheels: \(numberOfWheels)\nType: \(gearType)\nMotor: \(motor)\nAirbag Availability: \(shouldHasAirbags)\nBattery Name: \(batteryName)"
    }
    
    init(color: UIColor, numberOfSeats: UInt8, numberOfWheels: UInt8, type: CarType, gearType: GearType, motor: Motor, shouldHasAirbags: Bool, batteryName: String) {
        
        self.color = color
        self.numberOfSeats = numberOfSeats
        self.numberOfWheels = numberOfWheels
        self.type = type
        self.gearType = gearType
        self.motor = motor
        self.shouldHasAirbags = shouldHasAirbags
        self.batteryName = batteryName
    }
}
