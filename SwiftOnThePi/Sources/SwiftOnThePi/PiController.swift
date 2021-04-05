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

    func multipleLEDs() {

    }

    func readingPotentiometer() {

    }

	func readingPushButton() {

        let gpio = SwiftyGPIO.GPIOs(for: .RaspberryPi4)

        guard let button = gpio[.P12] else {
            fatalError("Could not locate button")
        }

        button.direction = .IN
        let current = button.value
        button.bounceTime = 0.5

        button.onRaising{
            gpio in 
            print("Transition to 1, current value:" + String(gpio.value))
        }

        button.onFalling{
            gpio in
            print("Transition to 0, current value:" + String(gpio.value))
        }

        button.onChange{
            gpio in
            gpio.clearListeners()
            print("The value changed, current value:" + String(gpio.value))
        }  
    }

    func readingSPDTSwitch() {

    }

    func readingLightSensor() {

    }

    func animatingLEDs() {

    }

    func drivingRGBLED() {

    }

    func hBridgeMotorController() {

    }

    func bme280() {

    }

    func soilMoistureSensor() {

    }

    func usingLCDScreen() {

    }

    func controllingLEDsWithShiftRegister() {

    }

    func drivingSevenSegmentDisplay() {

    }
}
