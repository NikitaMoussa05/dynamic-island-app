//
//  LiveActivityAttributes.swift
//  DynamicIslandApp
//
//  Created by Vasichko Anna on 02.10.2022.
//

import Foundation
import ActivityKit

public struct TimerAttributes: ActivityAttributes {
    
    public typealias TimeState = ContentState
    
    public struct ContentState: Codable, Hashable {
        var plannedDuration: ClosedRange<Date>
    }
    
    var actionName: String
    
}
