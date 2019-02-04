//
//  Webservice.swift
//  News
//
//  Created by Mohammad Azam on 2/4/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

class Webservice {
    
    func getArticles(with url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articlesList = try? JSONDecoder().decode(ArticleList.self, from: data)
                completion(articlesList?.articles)
            }
            
        }.resume()
        
    }
    
}
