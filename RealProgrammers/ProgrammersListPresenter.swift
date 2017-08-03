//
//  ProgrammersListPresenter.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import Foundation

class ProgrammersListPresenter {
    
    var numberOfProgrammers: Int {
        return programmers.count
    }
    let useCase: showProgrammersListUseCase
    fileprivate var programmers: [ProgrammerResponse] = []
    
    init (useCase: showProgrammersListUseCase) {
        self.useCase = useCase
    }
    
    func viewIsReady() {
        useCase.showProgrammers()
    }
    
    // Not a good idea to have a dependency from UIKit, what if we want to have different UI Interfaces?
    func configure(cell: ProgrammerCellView, forRowAt row: Int) {
        let programmer = programmers[row]
        cell.display(name: programmer.name)
        // The same for the same of the data.....
    }
}

// Inner layers get inside the extension
extension ProgrammersListPresenter : ProgrammersListPresentation {
    func present(programmers: [ProgrammerResponse]) {
        self.programmers = programmers
    }
}
