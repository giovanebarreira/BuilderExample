//
//  CarBuilder.swift
//  BuilderExample
//
//  Created by Giovane Barreira on 4/4/20.
//  Copyright © 2020 Giovane Barreira. All rights reserved.
//

import Foundation
import UIKit

class CarBuilder: CarBluePrint {
    var color: UIColor = UIColor.black
    var numberOfSeats: UInt8 = 5
    var numberOfWheels: UInt8 = 4
    var type: CarType = .saloon
    var gearType: GearType = .automatic
    var motor: Motor = Motor(id: "111", name: "Default Motor",
                             model: "T9", numberOfCylinders: 4)
    var shouldHasAirbags: Bool = false
    var batteryName: String = "Default Battery Name"
    
    func buildCar() -> Car {
        return Car(color: color, numberOfSeats: numberOfSeats, numberOfWheels: numberOfWheels, type: type, gearType: gearType, motor: motor, shouldHasAirbags: shouldHasAirbags, batteryName: batteryName)
    }
}
