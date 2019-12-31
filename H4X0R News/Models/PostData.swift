//
//  PostData.swift
//  H4X0R News
//
//  Created by Hoang Dang on 12/28/19.
//  Copyright © 2019 Hoang Dang. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
