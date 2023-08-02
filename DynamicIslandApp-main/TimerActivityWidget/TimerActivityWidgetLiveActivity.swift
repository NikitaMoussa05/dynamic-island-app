//
//  TimerActivityWidgetLiveActivity.swift
//  TimerActivityWidget
//
//  Created by Vasichko Anna on 02.10.2022.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct TimerActivityWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var value: Int
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct TimerActivityWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: TimerAttributes.self) { context in
           // Lock Screen View
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                   Image(systemName: "timer")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                DynamicIslandExpandedRegion(.center) {
                    VStack {
                        Text(context.attributes.actionName)
                        Text("Time Left:")
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    ProgressView(timerInterval: context.state.plannedDuration)
                }
            } compactLeading: {
                
            } compactTrailing: {
                Image(systemName: "timer")
            } minimal: {
               
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}
