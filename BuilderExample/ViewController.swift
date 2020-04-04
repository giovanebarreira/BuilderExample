//
//  ViewController.swift
//  BuilderExample
//
//  Created by Giovane Barreira on 4/2/20.
//  Copyright © 2020 Giovane Barreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var builder = CarBuilder()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // currently, the builder creates cars with default configuration.
        let defaultCar = builder.buildCar()
        print(defaultCar.description, "\n")
        
        // now, the builder creates cars with default configuration,
        // but with a small edit on making the airbags available
        builder.shouldHasAirbags = true
        let safeCar = builder.buildCar()
        print(safeCar.description, "\n")
        
        // now, the builder creates cars with default configuration
        // with some extra features: the airbags are available and the color is purple
        builder.color = UIColor.purple
        let purpleCar = builder.buildCar()
        print(purpleCar, "\n")
        
        builder.batteryName = "New Battery Name"
        let editedBatteryCar = builder.buildCar()
        print(editedBatteryCar, "\n")
        
    }
}

