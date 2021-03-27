import SwiftyGPIO
import Foundation

let gpio = SwiftyGPIO.GPIOs(for: .RaspberryPi4)

print("Starting the dance")

guard let led = gpio[.P26] else {
    fatalError("Could not locate LED")
}


led.direction = .OUT

led.value = 0

while true {
    led.value = 1
    Thread.sleep(forTimeInterval: 0.05)
    led.value = 0
    Thread.sleep(forTimeInterval: 0.1)
}
