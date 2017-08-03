//
//  showProgrammersListUseCase.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import Foundation

class showProgrammersListUseCase {
    
    // MARK: Properties & Initialization
    
    let entityGateway: EntityGateway
    var presenter: ProgrammersListPresentation!
    
    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
    }
    
    
    // MARK: Logic of the interactor.
    
    func showProgrammers() {
        
        // 1. Fetching the data. (dependency version principle)
        let programmers = entityGateway.fetchProgrammers()
        
        // 2. Process the data: transformation in order to reduce the data we are going to show in the view. We'll display the name, the date of the interview and the 'favorite' attribute.
        let programmerResponse = programmers.map { ProgrammerResponse(programmer: $0) }
        
        // 3. Provide the data to the presenter.
        presenter.present(programmers: programmerResponse)
        
        // PRINCIPLES
        // 1- Single responsability principle. Obvious: one class, one mission.
        // 2- Open-close principle. Open for extension but close for modification. UITableView example: application of this principle.
        // 3- Liscrof principle. The subclasses should keep the same operation and assumptions of the superclasses. If we susbtitute an instance of a class by any instance of a subclass, it still should work the same.
        // 4- Interface segregation principle.
        // **** 5- DEPENDENCY INVERSION PRINCIPLE. High level class should not depend on the implementation of the other classes. ****
    }
}
