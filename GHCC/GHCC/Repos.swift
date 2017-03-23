//
//  Repos.swift
//  GHCC
//
//  Created by Marie Park on 3/22/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

struct Repo {
    
    var repoID: Int
    var name: String
    var description: UITextView
    var language: String
    var rating: Int
    
    init(repoID: Int, name: String, description: UITextView, language: String, rating: Int) {
        self.repoID = repoID
        self.name = name
        self.description = description
        self.language = language
        self.rating = rating
    }
}
