import Foundation

class PiApplication {
    var piController: PiController

    init() {
        self.piController = PiController()
    }
}

// MARK: - Debug
extension PiApplication {
    static func announceStart(_ functionName: String = #function) {
        print("Now starting \(functionName)")
    }

    static func announceEnd(_ functionName: String = #function) {
        print("Completed running \(functionName)")
    }
}
