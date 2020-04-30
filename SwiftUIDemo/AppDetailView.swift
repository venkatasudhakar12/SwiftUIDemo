//
//  AppDetailView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 29/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct AppDetailView: View {
    var app:App
    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    Image(app.icon)
                        .resizable()
                        .frame(width:120,height: 120)
                    Text(app.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }.frame(minWidth:0,maxWidth: .infinity)
                Image(app.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                Text(app.text)
                    .padding(.horizontal, 20)
            }
        }
    }
}
