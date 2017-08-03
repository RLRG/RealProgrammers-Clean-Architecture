//
//  ProgrammerTableViewCell.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {

}

extension ProgrammerTableViewCell : ProgrammerCellView {
    
    func display(name: String) {
        textLabel?.text = name
    }
    
    func display(favorite: Bool) {
        // TODO: code
    }
    
    func display(interviewDate: String) {
        // TODO: code
    }
}
