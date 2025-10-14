//
//  Displays.swift
//  oro-timer
//
//  Created by Adam Han on 2025-10-14.
//

import SwiftUI


func displayTimeRemaining(total_seconds: Int) -> Text {
    let minutes_calc = total_seconds / 60
    let seconds_calc = total_seconds % 60
    
    let minutes_display = String(minutes_calc)
    var seconds_display = String(seconds_calc)
    
    // adds a 0 to the start of string if seconds_calc is a single digit
    if seconds_calc < 10 {
        seconds_display = "0" + seconds_display
    }
    
    return Text(minutes_display + ":" + seconds_display)
}
