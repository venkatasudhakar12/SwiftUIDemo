//
//  WebServices.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 02/12/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import Foundation

class WebService {
    func getPost(completion:@escaping([Post]?)->()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else{
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data , error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}
