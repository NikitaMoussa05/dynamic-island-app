//
//  TimerActivityWidgetBundle.swift
//  TimerActivityWidget
//
//  Created by Vasichko Anna on 02.10.2022.
//

import WidgetKit
import SwiftUI

@main
struct TimerActivityWidgetBundle: WidgetBundle {
    var body: some Widget {
        TimerActivityWidget()
        TimerActivityWidgetLiveActivity()
    }
}
