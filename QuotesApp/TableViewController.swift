//
//  TableViewController.swift
//  QuotesApp
//
//  Created by Abhishek Dwivedi on 09/05/16.
//  Copyright © 2016 Abhishek Dwivedi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var entrepreneurDatasource = [Entrepreneur]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Quotes"

        entrepreneurDatasource = EntrepreneurDatasource.fetchAllEntrepreneurs()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entrepreneurDatasource.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> TableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as? TableViewCell

        // Configure the cell...
        cell?.nameLabel?.text = entrepreneurDatasource[indexPath.row].name
        cell?.cellImageView.image = UIImage(named: entrepreneurDatasource[indexPath.row].image!)
        return cell!
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "detailSegue" {
            let row = self.tableView.indexPathForSelectedRow!.row
            let vc = segue.destinationViewController as? DetailTableViewController
            vc?.selectedEntreprenuer = entrepreneurDatasource[row]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
