//
//  ContentView.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                let temp_timer = TimerClass(seconds_left: 10)
                temp_timer.startTimer()
            } label: {
                Text("Start Timer")
            }
        }
    }
}

#Preview {
    ContentView()
}
