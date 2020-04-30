//
//  PostsView.swift
//  SwiftUIDemo
//
//  Created by Sudhakar on 02/12/19.
//  Copyright © 2019 Sudhakar. All rights reserved.
//

import SwiftUI

struct PostsView: View {
    @ObservedObject private var postListVM = PostListViewModel()
    var body: some View {
        List(self.postListVM.posts, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(post.title).font(.title)
                Text(post.body)
            }
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
