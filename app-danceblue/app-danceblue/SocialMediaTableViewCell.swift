//
//  SocialMediaTableViewCell.swift
//  app-danceblue
//
//  Created by Blake Swaidner on 11/5/17.
//  Copyright © 2017 DanceBlue. All rights reserved.
//

import FirebaseAnalytics
import UIKit

protocol SocialMediaDelegate: class {
    func didTapVimeo()
}

class SocialMediaTableViewCell: UITableViewCell {

    static let identifier = "SocialMediaCell"

    weak var delegate: SocialMediaDelegate?
    
    @IBOutlet weak var dividerView: UIView!
    
    // MARK: - Initialization
    
    override func awakeFromNib() {
        dividerView.backgroundColor = Theme.Color.background
    }
    
    // MARK: - Actions
    
    @IBAction func facebookTapped(_ sender: Any) {
        Analytics.logEvent("Facebook_Icon_Tapped", parameters: nil)
        UIApplication.shared.open(URL(string: "fb://profile?id=danceblue")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func instagramTapped(_ sender: Any) {
        Analytics.logEvent("Instagram_Icon_Tapped", parameters: nil)
        UIApplication.shared.open(URL(string: "instagram://user?username=UK_DanceBlue")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        Analytics.logEvent("Twitter_Icon_Tapped", parameters: nil)
        UIApplication.shared.open(URL(string: "twitter:///user?screen_name=UKDanceBlue")!, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func vimeoTapped(_ sender: Any) {
        delegate?.didTapVimeo()
    }
    
}
