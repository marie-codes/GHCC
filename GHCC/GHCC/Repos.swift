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
    var commits: Int
    var rating: Int
    
    init(repoID: Int, name: String, description: UITextView, commits: Int, rating: Int) {
        self.repoID = repoID
        self.name = name
        self.description = description
        self.commits = commits
        self.rating = rating
    }
}
