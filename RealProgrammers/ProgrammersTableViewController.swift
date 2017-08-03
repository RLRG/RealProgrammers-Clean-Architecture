//
//  ProgrammersTableViewController.swift
//  RealProgrammers
//
//  Created by RLRG on 01/06/2017.
//  Copyright © 2017 GMV. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {

    public var presenter: ProgrammersListPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfProgrammers
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Tricky !! 
        
        // Get the empty cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "programmerCell", for: indexPath)
        
        // Configuration of the data inside of the cell
        presenter.configure(cell: cell as! ProgrammerCellView, forRowAt: indexPath.row)
        
        return cell
    }


}
