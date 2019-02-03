//
//  MoraleCupListTableViewCell.swift
//  app-danceblue
//
//  Created by Blake Swaidner on 2/4/18.
//  Copyright © 2018 DanceBlue. All rights reserved.
//

import UIKit

class MoraleCupListTableViewCell: UITableViewCell {

    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamNumberLabel: UILabel!
    @IBOutlet weak var standingLabel: UILabel!
    
    static let identifier = "MoraleCupListCell"
    
    func setupLabels() {
        standingLabel.layer.cornerRadius = standingLabel.frame.size.width / 2
        standingLabel.clipsToBounds = true
        
        pointsLabel.font = Theme.Font.MoraleCup.bold
        teamNumberLabel.font = Theme.Font.MoraleCup.bold
        standingLabel.font = Theme.Font.MoraleCup.thin
        teamNameLabel.font = Theme.Font.MoraleCup.thin
        
        pointsLabel.textColor = Theme.Color.black
        teamNumberLabel.textColor = Theme.Color.black
        standingLabel.textColor = Theme.Color.lightGray
        teamNameLabel.textColor = Theme.Color.black
        
        standingLabel.backgroundColor = Theme.Color.white
    }

    func configureCell(with team: MoraleTeam?) {
        setupLabels()
        
        pointsLabel.text = "\(team?.points ?? 0) points"
        teamNameLabel.text = team?.name ?? ""
        teamNumberLabel.text = "Team \(team?.number ?? 0)" 
        standingLabel.text = "\(team?.standing ?? 0)"
        
        if team?.standing ?? 0 == 1 {
            standingLabel.backgroundColor = Theme.Color.MoraleCup.gold
            standingLabel.font = Theme.Font.header
            standingLabel.textColor = Theme.Color.white
        } else if team?.standing ?? 0 == 2 {
            standingLabel.backgroundColor = Theme.Color.MoraleCup.silver
            standingLabel.font = Theme.Font.header
            standingLabel.textColor = Theme.Color.white
        } else if team?.standing ?? 0 == 3 {
            standingLabel.backgroundColor = Theme.Color.MoraleCup.bronze
            standingLabel.font = Theme.Font.header
            standingLabel.textColor = Theme.Color.white
        }
        
    }
    
}
