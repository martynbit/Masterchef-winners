//
//  MChefContestantViewController.swift
//  Masterchef reviewer
//
//  Created by Martynas Tamulionis on 16/02/2019.
//  Copyright © 2019 nocodelimits. All rights reserved.
//

import UIKit

class MChefContestantViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var retrievedName: String!
    var retrievedDescription: String!
    var retrievedPhoto: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = retrievedName
        photoImageView.image = retrievedPhoto
        descriptionLabel.text = retrievedDescription
        
    }
    
    func prepareUiElements(name: String, description: String, photo: UIImage) {
        retrievedName = name
        retrievedPhoto = photo
        retrievedDescription = description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
