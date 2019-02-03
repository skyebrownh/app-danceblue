//
//  MoraleCupTableViewCell.swift
//  app-danceblue
//
//  Created by Blake Swaidner on 1/31/18.
//  Copyright © 2018 DanceBlue. All rights reserved.
//

import UIKit

class MoraleCupTableViewCell: UITableViewCell {

    static let identifier = "MoraleCupCell"
    
    @IBOutlet weak var firstPlaceLabel: UILabel!
    @IBOutlet weak var firstPlaceTeamNumberLabel: UILabel!
    @IBOutlet weak var firstPlaceTeamNameLabel: UILabel!
    @IBOutlet weak var firstPlaceTeamPointsLabel: UILabel!
    
    @IBOutlet weak var secondPlaceLabel: UILabel!
    @IBOutlet weak var secondPlaceTeamNumberLabel: UILabel!
    @IBOutlet weak var secondPlaceTeamNameLabel: UILabel!
    @IBOutlet weak var secondPlaceTeamPointsLabel: UILabel!
    
    @IBOutlet weak var thirdPlaceLabel: UILabel!
    @IBOutlet weak var thirdPlaceTeamNumberLabel: UILabel!
    @IBOutlet weak var thirdPlaceTeamNameLabel: UILabel!
    @IBOutlet weak var thirdPlaceTeamPointsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        setupStyles()
    }

    // MARK: - Initialization
    
    func configureCell(with data: [MoraleTeam]) {
        setupStyles()
        if data.count > 3 {
            configureFirstPlace(with: data)
            configureSecondPlace(with: data)
            configureThirdPlace(with: data)
        }
    }
    
    
    func configureFirstPlace(with data: [MoraleTeam]) {
        firstPlaceLabel.text = "1"
        firstPlaceTeamNumberLabel.text = "Team \(data[0].number ?? 0)"
        firstPlaceTeamNameLabel.text = data[0].name ?? ""
        firstPlaceTeamPointsLabel.text = "\(data[0].points ?? 0) points"
    }
    
    func configureSecondPlace(with data: [MoraleTeam]) {
        secondPlaceLabel.text = "2"
        secondPlaceTeamNumberLabel.text = "Team \(data[1].number ?? 0)"
        secondPlaceTeamNameLabel.text = data[1].name ?? ""
        secondPlaceTeamPointsLabel.text = "\(data[1].points ?? 0) points"
    }
    
    func configureThirdPlace(with data: [MoraleTeam]) {
        thirdPlaceLabel.text = "3"
        thirdPlaceTeamNumberLabel.text = "Team \(data[2].number ?? 0)"
        thirdPlaceTeamNameLabel.text = data[2].name ?? ""
        thirdPlaceTeamPointsLabel.text = "\(data[2].points ?? 0) points"
    }
    
    // MARK: - Styling
    
    func setupStyles() {
        styleFirst()
        styleSecond()
        styleThird()
    }
    
    func styleFirst() {
        firstPlaceLabel.backgroundColor = Theme.Color.MoraleCup.gold
        firstPlaceLabel.layer.cornerRadius = firstPlaceLabel.frame.size.width / 2
        firstPlaceLabel.clipsToBounds = true
        firstPlaceLabel.font = Theme.Font.MoraleCup.bold
        firstPlaceLabel.textColor = Theme.Color.white
        
        firstPlaceTeamNumberLabel.textColor = Theme.Color.black
        firstPlaceTeamNameLabel.textColor = Theme.Color.black
        firstPlaceTeamPointsLabel.textColor = Theme.Color.black
    }
    
    func styleSecond() {
        secondPlaceLabel.backgroundColor = Theme.Color.MoraleCup.silver
        secondPlaceLabel.layer.cornerRadius = firstPlaceLabel.frame.size.width / 2
        secondPlaceLabel.clipsToBounds = true
        secondPlaceLabel.font = Theme.Font.MoraleCup.bold
        secondPlaceLabel.textColor = Theme.Color.white
        
        secondPlaceTeamNumberLabel.textColor = Theme.Color.black
        secondPlaceTeamNameLabel.textColor = Theme.Color.black
        secondPlaceTeamPointsLabel.textColor = Theme.Color.black
    }
    
    func styleThird() {
        thirdPlaceLabel.backgroundColor = Theme.Color.MoraleCup.bronze
        thirdPlaceLabel.layer.cornerRadius = firstPlaceLabel.frame.size.width / 2
        thirdPlaceLabel.clipsToBounds = true
        thirdPlaceLabel.font = Theme.Font.MoraleCup.bold
        thirdPlaceLabel.textColor = Theme.Color.white
        
        thirdPlaceTeamNumberLabel.textColor = Theme.Color.black
        thirdPlaceTeamNameLabel.textColor = Theme.Color.black
        thirdPlaceTeamPointsLabel.textColor = Theme.Color.black
    }
    
}
