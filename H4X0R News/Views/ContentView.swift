//
//  ContentView.swift
//  H4X0R News
//
//  Created by Hoang Dang on 12/28/19.
//  Copyright © 2019 Hoang Dang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear {
            self.networkManager.fecthData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", tittle: "asdasd"),
//    Post(id: "12", tittle: "sdawe"),
//    Post(id: "13", tittle: "asdacasdasd")
//]
