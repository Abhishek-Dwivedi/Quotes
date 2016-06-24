//
//  TableViewCell.swift
//  QuotesApp
//
//  Created by Abhishek Dwivedi on 09/05/16.
//  Copyright © 2016 Abhishek Dwivedi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        nameLabel.font = UIFont(name:"Futura", size:20)
        self.selectionStyle = UITableViewCellSelectionStyle.None
        self.backgroundColor = UIColor.randomColor()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }    
}
