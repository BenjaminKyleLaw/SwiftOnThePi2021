# Swift on the PI

Prepared for SwiftMiami meetup between Giannini Charles and Benjamin Law.

A lot of the knowledge was gleaned and adapted from the amazing Marc Aupont, iOS Engineer at Lickability!

His guides are here!

- https://lickability.com/blog/swift-on-raspberry-pi/
- https://lickability.com/blog/swift-on-raspberry-pi-workshop/
- https://lickability.com/blog/swift-on-raspberry-pi-workshop-part-2/
- https://lickability.com/blog/swift-on-raspberry-pi-workshop-part-3/


For now, here's a step-by-step on how you can setup a raspberry pi 4 to run using Swift code in April 2021!



## Will update this as we work on the repo






## Setting up Remote Build System

This allows you to remote into the raspberry pi and update the code using Xcode, the preferred IDE for iOS/ MacOS/ tvOS/ watchOS developers.

- Setup passwordless SSH between your machine and the pi.
- Install Xport to build your Swift project on a remote machine.




- Install Xport on your machine:
-   I used Mint, install mint, then install Xport.
- Launch Xcode, create a new project. build external build system.
- Follow the lickablility directions I named mine RemotePiBuilder, and the SwiftPackage I named SwiftOnThePi. 
- Important: Change the Swift-tools-version in Package.swift to match the version of Swift your raspberry pi has installed, or you could have issues.


