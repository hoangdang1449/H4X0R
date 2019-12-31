//
//  DetailView.swift
//  H4X0R News
//
//  Created by Hoang Dang on 12/30/19.
//  Copyright © 2019 Hoang Dang. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


