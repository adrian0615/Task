//
//  TasksViewController.swift
//  Task2TableView
//
//  Created by Adrian McDaniel on 2/1/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tasks = [Task(title: "work"), Task(title: "school"), Task(title: "charity"), Task(title: "travel"), Task(title: "read")]
    
    
    @IBOutlet var tasksTableView: UITableView!
    
    let taskCellIdentifier = "TaskCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasksTableView.delegate = self
        tasksTableView.dataSource = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: taskCellIdentifier, for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row].title
        cell.textLabel?.textColor = UIColor.blue
        cell.textLabel?.textAlignment = .center

        
        
        return cell
    }
    
    
    
     }



