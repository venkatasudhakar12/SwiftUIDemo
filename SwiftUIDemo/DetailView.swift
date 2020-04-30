//
//  DetailView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 28/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @State var isProfileViewPresented = false
    var body: some View {
        ZStack{
            Color.gray
            VStack{
                Text("Sudhakar").foregroundColor(.white)
            }.navigationBarTitle("Detail", displayMode: .inline)
            .navigationBarItems(trailing:
                HStack(spacing:15) {
                    Image(systemName: Constants.SFSymbolName.suit_heart_fill).font(.title).foregroundColor(.red)
                    Button(action: {
                        print("")
                        self.isProfileViewPresented.toggle()
                    }) {
                        Image(systemName: Constants.SFSymbolName.person_circle_fill).font(.title)
                    }.sheet(isPresented: $isProfileViewPresented, content: { ProfileView() }).foregroundColor(.black)
                }
            )
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
