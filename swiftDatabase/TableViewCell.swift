//
//  TableViewCell.swift
//  swiftDatabase
//
//  Created by amrit on 12/12/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var firstName: UILabel!
    @IBOutlet var lastName: UILabel!
    @IBOutlet var collegeName: UILabel!
 
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
