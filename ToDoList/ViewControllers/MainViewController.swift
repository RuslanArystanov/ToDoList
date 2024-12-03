//
//  MainViewController.swift
//  ToDoList
//
//  Created by Руслан Арыстанов on 25.11.2024.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        getViewControllers()
    }
    
    private func getViewControllers(){
        let viewControllers = viewControllers
        
        for vc in viewControllers!{
            if let listTableVC = vc as? ListTableViewController {
                listTableVC.notes = Note.creatingAnArrayOfNotes()
                listTableVC.tableView.reloadData()
                print("reloaded")
            }
        }
    }
}
