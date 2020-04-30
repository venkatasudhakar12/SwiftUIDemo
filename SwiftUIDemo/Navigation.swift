//
//  Navigation.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 28/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.purple
                NavigationLink(destination:DetailView()) {
                    Image(systemName: Constants.SFSymbolName.play_circle_fill).font(.largeTitle)
                    Text("Play")
                }.foregroundColor(.white)
                }.edgesIgnoringSafeArea(.all).navigationBarTitle("Home")
        }
        
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
