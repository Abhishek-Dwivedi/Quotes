//
//  DetailTableViewController.swift
//  QuotesApp
//
//  Created by Abhishek Dwivedi on 09/05/16.
//  Copyright © 2016 Abhishek Dwivedi. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var selectedEntreprenuer : Entrepreneur?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedEntreprenuer?.name

        self.navigationController!.navigationBar.barTintColor = UIColor.randomColor()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (selectedEntreprenuer?.quote?.count)!
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> DetailTableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as? DetailTableViewCell

        // Configure the cell...
        cell?.quotesLabel.text = selectedEntreprenuer?.quote?[indexPath.row]

        return cell!
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
