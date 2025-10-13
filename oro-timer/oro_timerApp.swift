//
//  oro_timerApp.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-12.
//

import SwiftUI

class TimerClass {
    var timer: Timer?
    var seconds_left: Int = 0
    
    init(timer: Timer? = nil, seconds_left: Int = 0) {
        self.timer = timer
        self.seconds_left = seconds_left
    }
    
    func startTimer() {
        // timeInterval is how often (in seconds) the Timer fires
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    // Runs every every time according to the Timer's fire interval
    @objc func timerFired() {
        if self.seconds_left > 0 {
            print("\(self.seconds_left) seconds left")
            self.seconds_left -= 1
        }
        else {
            stopTimer()
            print("Time's up!")
        }
    }
}



@main
struct oro_timerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
