//
//  ContentView.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-12.
//

import SwiftUI


enum Mode {
    case focus
    case short_break
    case long_break
}

let FOCUS_TIME: Int = 25 * 60
let SHORT_BREAK_TIME: Int = 5 * 60
let LONG_BREAK_TIME = 10 * 60


struct ContentView: View {
    @State private var isRunning = false
    @State private var current_mode: Mode = Mode.focus
    @StateObject var main_timer = TimerClass(seconds_left: FOCUS_TIME)
    
    var body: some View {
        VStack {
            // Displays the time remaining
            displayTimeRemaining(total_seconds: main_timer.seconds_left)
            
            // HStack for Session Mode Buttons
            HStack {
                // Button switches to Focus Session
                Button {
                    main_timer.stopTimer()
                    isRunning = false
                    main_timer.setTimeLeft(seconds_value: FOCUS_TIME)
                    current_mode = Mode.focus
                    
                } label: {
                    Text("Focus")
                }
                
                
                // Button switches to Short Break
                Button {
                    main_timer.stopTimer()
                    isRunning = false
                    main_timer.setTimeLeft(seconds_value: SHORT_BREAK_TIME)
                    current_mode = Mode.short_break
                } label: {
                    Text("Short Break")
                }
                
                // Button switches to Long Break
                Button {
                    main_timer.stopTimer()
                    isRunning = false
                    main_timer.setTimeLeft(seconds_value: LONG_BREAK_TIME)
                    current_mode = Mode.long_break
                } label: {
                    Text("Long Break")
                }
            }
            
            
            
            if isRunning {
                // Stop Timer Button
                Button {
                    main_timer.stopTimer()
                    isRunning = false
                } label: {
                    Text("Stop Timer")
                }
            }
            else {
                // Start Timer Button
                Button {
                    main_timer.startTimer()
                    isRunning = true
                } label: {
                    Text("Start Timer")
                }
            }
            

        }
    }
}

#Preview {
    ContentView()
}
