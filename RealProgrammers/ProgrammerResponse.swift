//
//  ProgrammerResponse.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import Foundation

struct ProgrammerResponse {
    let name: String
    let interviewDate: Date
    let favorite: Bool
}

// ¿POR QUÉ HEMOS CREADO ESTO ASÍ?
extension ProgrammerResponse {
    init(programmer: Programmer) {
        name = programmer.name
        interviewDate = programmer.interviewDate
        favorite = programmer.favorite
    }
}
