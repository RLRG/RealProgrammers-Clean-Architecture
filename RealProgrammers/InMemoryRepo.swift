//
//  InMemoryRepo.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import Foundation

class InMemoryRepo {
    fileprivate var programmers: [Programmer] = [Programmer(name: "NAME", emacs:2, caffeine:3, realProgrammerRating:3, interviewDate: Date(), favorite: true)]
}

extension InMemoryRepo: EntityGateway {
    func fetchProgrammers() -> [Programmer] {
        return self.programmers
    }
}
