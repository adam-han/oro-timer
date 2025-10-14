//
//  ContentView.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-12.
//

import SwiftUI

let FOCUS_TIME: Int = 25 * 60

struct ContentView: View {
    @State private var isRunning = false
    @StateObject var main_timer = TimerClass(seconds_left: FOCUS_TIME)
    
    var body: some View {
        VStack {
            // Displays the time remaining
            Text("\(main_timer.seconds_left) seconds left")
            
            
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
