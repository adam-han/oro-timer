//
//  ContentView.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-12.
//

import SwiftUI

let FOCUS_TIME: Int = 25 * 60

struct ContentView: View {
    
    @StateObject var main_timer = TimerClass(seconds_left: FOCUS_TIME)
    
    var body: some View {
        VStack {
            // Displays the time remaining
            Text("\(main_timer.seconds_left) seconds left")
            
            // Start Timer Button
            Button {
                main_timer.startTimer()
            } label: {
                Text("Start Timer")
            }
            
            // Stop Timer Button
            Button {
                main_timer.stopTimer()
            } label: {
                Text("Stop Timer")
            }
            

        }
    }
}

#Preview {
    ContentView()
}
