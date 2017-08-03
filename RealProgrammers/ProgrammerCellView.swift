//
//  ProgrammerCellView.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name: String)
    func display(interviewDate: String) // TRICKY !!! We don't want to include the logic of the transformation in the view !
    func display(favorite: Bool)
}
