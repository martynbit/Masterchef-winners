//
//  MChefTableViewCell.swift
//  Masterchef reviewer
//
//  Created by Martynas Tamulionis on 08/02/2019.
//  Copyright © 2019 nocodelimits. All rights reserved.
//

import UIKit

class MChefTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var winYearLabel: UILabel!
    
    func setLabels(shortContestantInfo: Contestant) {
        nameLabel.text = shortContestantInfo.name
        winYearLabel.text = shortContestantInfo.winYear
    }

}
