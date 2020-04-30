//
//  AppListView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 29/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct AppListView: View {
    var body: some View {
        NavigationView{
            List(Service.apps){ item in
                NavigationLink(destination: AppDetailView(app: item)) {
                    AppView(app: item)
                }
            }.navigationBarTitle("Bayer Apps")
        }
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        AppListView()
    }
}
