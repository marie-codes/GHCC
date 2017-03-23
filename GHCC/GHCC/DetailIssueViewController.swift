//
//  DetailIssueViewController.swift
//  GHCC
//
//  Created by Marie Park on 3/22/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class DetailIssueViewController: UIViewController {

    var issueString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
}
