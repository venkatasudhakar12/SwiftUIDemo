//
//  TimerView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 05/12/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct TimerView: View {
   @ObservedObject var timer = MyTimer()
    var body: some View {
        Text("\(timer.value)")
            .font(.largeTitle)
    }
}

class MyTimer:ObservableObject {
    @Published var value: Int = 0
    let timer =  Timer()
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { time in
            self.value += 1
        }
    }
}
