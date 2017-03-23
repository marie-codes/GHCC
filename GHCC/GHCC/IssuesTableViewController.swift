//
//  IssuesTableViewController.swift
//  GHCC
//
//  Created by Marie Park on 3/22/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class IssuesTableViewController: UITableViewController {

    @IBOutlet weak var numbersLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBAction func addIssuePressed(_ sender: UIBarButtonItem) {
    self.performSegue(withIdentifier: "showDetailIssueView", sender: self)
    }
    
    var authorText = ""
    var numbersText = ""
    var issues = [String]()
    var issuesArray:[String] = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numbersLabel.text = numbersText
        authorLabel.text = authorText
        //let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        //self.navigationItem.rightBarButtonItem = addButton
    }

    func insertNewObject(_ sender: Any) {
        issues.insert("", at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.insertRows(at: [indexPath], with: .automatic)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "showDetailIssueView" { return }
        if let dest = segue.destination as? DetailIssueViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.issueString = issuesArray[(indexPath as NSIndexPath).row]
        }
    }
    
    // MARK: - Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return issuesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = issuesArray[indexPath.row]
        cell.textLabel!.text = object.description
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            issuesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
            
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showDetailIssueView", sender: self)
    }

}
