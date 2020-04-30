//
//  AlertViews.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 27/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    @State private var alert = false
    @State private var action = false
    @State private var sheet = false
    var body: some View {
        VStack{
            Button(action: {
                print("clicked Subscribe")
                self.sheet.toggle()
            }, label: {
                Image(systemName: "hand.thumbsup")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 100)
                .cornerRadius(10)
            }).sheet(isPresented: $sheet, content: { SheetView() })
           
        }
    }
}

struct AlertViews_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
