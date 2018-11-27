//
//  ViewController.swift
//  The Night Porter
//
//  Created by Frankline Mutwiri on 11/8/18.
//  Copyright © 2018 Qazana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let dailyTasks = [
        "Check all windows",
        "Check all doors",
        "Is the boilder fueled",
        "Check the mailbox",
        "Empty trash containers",
        "If Freezing, check water pipes"
    ]
    
    let weeklyTasks = [
        "Check inside all cabins",
        "Flush all lavatories in cabins",
        "Walk the perimeter of property"
    ]
    
    let monthlyTasks = [
        "Test securty alarm",
        "Test motion detectors",
        "Test smoke alarms"
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("Calling table view cellforrowat\(indexPath.row)")
        
        let cell = tableView.dequeueReusableCell( withIdentifier: "normalCell", for: indexPath )
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
        cell.imageView?.image = UIImage(named: "clock")
        cell.accessoryType = .detailButton
        cell.detailTextLabel?.text = "This is something else"

        return cell
    }

    // TableView Data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

