//
//  Subject.swift
//  favor
//
//  Created by terios on 7/5/16.
//  Copyright © 2016 terios. All rights reserved.
//

import UIKit


class Subject {
    
    // MARK: Properties
    var title: String = ""
    var background: UIImage?
    
    
    // MARK: Initialization
    
    init?(title: String, background: UIImage?) {
        // Initialize stored properties.
        self.title = title
        self.background = background
        
        // Initialization should fail if there is no name or if the rating is negative.
        if title.isEmpty {
            return nil
        }
    }
}