//
//  ListTableViewController.swift
//  ToDoList
//
//  Created by Руслан Арыстанов on 26.11.2024.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var notes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = notes[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    
    //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let redactorVC = segue.destination as? RedactorViewController else {
            return
        }
        guard let index = tableView.indexPathForSelectedRow else {return}
        
        redactorVC.text = notes[index.row]
        redactorVC.index = index.row
    }
}
