//
//  ContentView.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-12.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var main_timer = TimerClass(seconds_left: 10)
    
    var body: some View {
        VStack {
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
