//
//  Issues.swift
//  GHCC
//
//  Created by Marie Park on 3/22/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

struct Issues {
    
    var issueID: Int
    var name: String
    var description: UITextView
    var language: String

    
    init(issueID: Int, name: String, description: UITextView, language: String) {
        self.issueID = issueID
        self.name = name
        self.description = description
        self.language = language
       
    }
}
