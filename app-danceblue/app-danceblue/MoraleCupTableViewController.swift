//
//  MoraleCupTableViewController.swift
//  app-danceblue
//
//  Created by Blake Swaidner on 2/5/18.
//  Copyright © 2018 DanceBlue. All rights reserved.
//

import UIKit

class MoraleCupTableViewController: UITableViewController {

    public var moraleCupData: [MoraleTeam] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moraleCupData.count 
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let moraleCell = tableView.dequeueReusableCell(withIdentifier: MoraleCupListTableViewCell.identifier, for: indexPath) as? MoraleCupListTableViewCell {
            moraleCell.configureCell(with: moraleCupData[indexPath.row])
            return moraleCell
        }
        
        return UITableViewCell()
    }

}
