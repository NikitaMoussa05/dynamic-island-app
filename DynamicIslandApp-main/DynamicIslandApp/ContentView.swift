//
//  ContentView.swift
//  DynamicIslandApp
//
//  Created by Vasichko Anna on 02.10.2022.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    
    @State private var currentActivity: Activity<TimerAttributes>?
    
    var body: some View {
        VStack {
            Image(systemName: "clock.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.gray)
            Button(action: startActivity) {
                Text("Start Timer")
                    .foregroundColor(.red)
                    .font(.title)
            }
        }
        .padding()
    }
    
    func startActivity(){
        let startDate = Date.now
        guard let endDate = Calendar.current.date(byAdding: .minute, value: 1, to: startDate) else { return }
        let interval = startDate...endDate
        
        let attributes = TimerAttributes(actionName: "Cooking pasta")
        let state = TimerAttributes.TimeState(plannedDuration: interval)
        
        do {
            currentActivity = try Activity<TimerAttributes>.request(attributes: attributes, contentState: state)
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
