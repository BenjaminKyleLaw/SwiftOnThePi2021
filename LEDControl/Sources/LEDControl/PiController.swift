//
//  File.swift
//  
//
//  Created by Giannini Charles on 3/27/21.
//
import SwiftyGPIO
import Foundation

class PiController {
    init() {
        print("Successfully initialized PiController")

        print("Running first test")
        firstTest()
    }

    func firstTest() {
        print("STARTING First Test WOOHOOOOO")

        let gpio = SwiftyGPIO.GPIOs(for: .RaspberryPi4)

        print("Starting the dance")

        guard let led = gpio[.P26] else {
            fatalError("Could not locate LED")
        }


        led.direction = .OUT

        led.value = 0

        while true {
            led.value = 1
            print(led.value)
            Thread.sleep(forTimeInterval: 0.05)
            led.value = 0
            print(led.value)
            Thread.sleep(forTimeInterval: 0.1)
        }
    }
}
