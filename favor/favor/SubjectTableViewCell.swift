//
//  subjectTableViewCell.swift
//  favor
//
//  Created by terios on 7/5/16.
//  Copyright © 2016 terios. All rights reserved.
//

import UIKit

class SubjectTableViewCell: UITableViewCell {

    // MARK: Attributes
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    // MARK: actions
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
