//
//  PostListViewModel.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 02/12/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import Foundation

class PostListViewModel:ObservableObject{
    @Published var posts = [PostViewModel]()
    init() {
        WebService().getPost { post  in
            if let post = post{
                 self.posts = post.map(PostViewModel.init)
            }
        }
    }
}
struct PostViewModel {
    var post:Post
//    init(post:Post) {
//        self.post = post
//    }
    var id: Int{
        return post.id
    }
    var title:String{
        return post.title
    }
    var body:String{
        return post.body
    }
}
