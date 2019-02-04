//
//  Article.swift
//  News
//
//  Created by Mohammad Azam on 2/4/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}


