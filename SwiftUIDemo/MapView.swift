//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 25/11/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI
//import UIKit

struct MapView: View {
     var body: some View {
        Text("")
       }
}
struct ActivityIndicator: UIViewRepresentable {
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let v = UIActivityIndicatorView()
        
        return v
    }
    
    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        if isAnimating {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
