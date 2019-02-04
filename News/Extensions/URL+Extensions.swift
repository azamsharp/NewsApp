//
//  URL+Extensions.swift
//  News
//
//  Created by Mohammad Azam on 2/4/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

extension URL {
    
    static func urlForTopHeadlines() -> URL {
        return URL(string: Constants.URLs.topHeadlines)!
    }
    
}
