//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 27/09/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let devices = [
    Device(name: "Sai"),
    Device(name: "Sudhakar")
    ]
    
    var body: some View {
        //Text("Hello World")
        List(devices) { device in
            Text(device.name)
        }
    }
    func hi(){
        print("")
    }
    struct Message:Identifiable {
        let id = UUID()
        let name:String
    }
    
}
struct Device:Identifiable {
    var id : UUID = UUID()
    let name : String
    
        
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
