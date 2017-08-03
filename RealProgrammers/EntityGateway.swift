//
//  EntityGateway.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import Foundation


protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}
