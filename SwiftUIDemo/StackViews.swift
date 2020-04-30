//
//  StackViews.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 28/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct StackViews: View {
    var text1 = "Hello Text 1"
    var text2 = "Hello Text 2"
    var text3 = "Hello Text 3"
    
    var body: some View {
        VStack{
            HelloView(textString: text1, font: .title, foreground: .blue)
            HStack{
                HelloView(textString: text2, font: .subheadline, foreground: .yellow)
                HelloView(textString: text3, font: .subheadline, foreground: .red)
            }
        .padding(20)
        }
        .padding(10)
    }
}
struct HelloView: View {
    var textString : String
    var font: Font
    var foreground : Color
    var body: some View {
        Text(textString)
            .font(font)
            .fontWeight(.bold)
            .foregroundColor(foreground)
        
    }
}
struct StackViews_Previews: PreviewProvider {
    static var previews: some View {
        StackViews()
    }
}
