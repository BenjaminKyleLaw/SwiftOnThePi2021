import SwiftyGPIO
import Foundation

class PiController {
    init() {
        print("Successfully initialized PiController")
        blinkLED()
    }

    func blinkLED() {
        PiApplication.announceStart()

        let gpio = SwiftyGPIO.GPIOs(for: .RaspberryPi4)

        guard let led = gpio[.P26] else {
            fatalError("Could not locate LED")
        }

        led.direction = .OUT
        led.value = 0
        print(led.value)
        Thread.sleep(forTimeInterval: 2)
        led.value = 1
        print(led.value)
        Thread.sleep(forTimeInterval: 2)
        led.value = 0
        print(led.value)

        PiApplication.announceEnd()
    }
}
