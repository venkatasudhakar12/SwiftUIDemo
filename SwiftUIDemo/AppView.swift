//
//  AppView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 29/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var app:App
    var body: some View {
        HStack{
            Image(app.icon)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width:80,height: 80)
            VStack(alignment: .leading, spacing: nil) {
                Text(app.title)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(app.text)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
        }
    }
}


