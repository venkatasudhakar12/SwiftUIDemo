//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 07/10/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var count = 0
    @State var scale : CGFloat = 1.0
    @State var message : String = ""
    @State var rotation : Double = 0
    @State var didTap : Bool = false
    @State var itmes : Int = 0
    @State var actionSheetValue:Bool = false
    var minValue = 0.0
    var maxValue = 100.0
    var value = 0.0
    @State var selection = 0
    let colors = ["Red","Yellow","Green","Blue"]
    var body: some View {
       
//     Image("Bayer")
//        .clipShape(Circle())
//        .shadow(radius: 10)
//        .overlay(Circle().stroke(Color.red,lineWidth: 5))
        
//        VStack{
//            Button(action: {
//                self.count += 1
//            }) {
//                Text("Login")
//            }
//            Text("Count \(self.count)")
//        }
        
//        VStack{
//            Slider(value: $scale, in: 1.0 ... 10.0,step: 0.1)
//                .padding(.bottom,100)
//            //Image(systemName: "cloud.rain")
//            Image("Bayer")
//            .scaleEffect(scale)
//        }
        
//        VStack{
//            TextField("Enter your message", text: $message)
//                .border(Color.black)
//                .padding(50)
//            Text("\(message)")
//        }
//    .padding()
//    .font(.title)
//    }
        
//        VStack{
//            Slider(value: $rotation, in: 0.0 ... 360.0,step: 1.0)
//            .padding()
//            //Image(systemName: "sun.max")
//                Image("Bayer")
//                .rotationEffect(.degrees(rotation))
//        }
        
//        Text("welcome To Bayer")
//            .foregroundColor(Color.red)
//            .font(.title)
//            .bold()
//            .padding()
//            .shadow(color: .gray, radius: 3, x: 12, y: 20)
        
//        Text("Tap me")
//            .frame(minWidth:0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
//            .gesture(TapGesture()
//                .onEnded{
//                    self.didTap.toggle()
//                })
//            .background(didTap ? Color.red : Color.blue)
        
//        Stepper(value: $itmes, in: 0...10) {
//            Text("Number of items \(itmes)")
//        }.padding()
        
        
//        Button(action: {
//            self.actionSheetValue.toggle()
//        }) {
//            Text("Action Sheet")
//        }
//        .actionSheet(isPresented: $actionSheetValue, content: {
//            self.actionSheet
//        })
//    }
//    var actionSheet:ActionSheet{
//               ActionSheet(title: Text("Action Sheet"), message: Text("options"), buttons: [
//                   .default(Text("Save")),
//                   .cancel(Text("cancel")),
//                   .destructive(Text("Close"))
//                   ]
//               )
//           }
        
        Picker(selection: $selection, label: Text("Picker Name")) {
            ForEach(0..<colors.count){ index in
                Text(self.colors[index]).tag(index)
            }
        }
    }
        
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
