//
//  ChefModel.swift
//  Masterchef reviewer
//
//  Created by Martynas Tamulionis on 08/02/2019.
//  Copyright © 2019 nocodelimits. All rights reserved.
//

import UIKit

class Contestant {
    var name: String?
    var winYear: String?
    var photo: UIImage?
    var description: String?
    
    
    init(name: String, winYear: String, photo: UIImage, description: String) {
        self.name = name
        self.winYear = winYear
        self.photo = photo
        self.description = description
    }
    
    class func addContestantsToArray() -> [Contestant] {
        
        var arrayOfContestants = [Contestant]()
        
        let whitney = Contestant(name: "Whitney Miller", winYear: "2010", photo: UIImage(imageLiteralResourceName: "Whitney_Miller.jpg"), description: "Whitney Miller was a College Student from Poplarville, Mississippi. She was the MasterChef season 1 winner in 2010, due to her natural ability in the kitchen.")
        
        let jennifer = Contestant(name: "Jennifer Behm", winYear: "2011", photo: UIImage(imageLiteralResourceName: "Jennifer_Behm.jpg"), description: "Jennifer Behm was a Realtor from Wilmington, Delaware. She was the MasterChef Season 2 winner in 2011, after her three course dinner consisting of scallops, quail and a poached pear impressed the judges.")
        
        let christine = Contestant(name: "Christine Ha", winYear: "2012", photo: UIImage(imageLiteralResourceName: "Christine_Ha.jpg"), description: "Christine Hà was a student from Houston, Texas. She was the MasterChef Season 3 winner in 2012, due to her menu in the final. ")
        
        let luca = Contestant(name: "Luca Manfe", winYear: "2013", photo: UIImage(imageLiteralResourceName: "Luca_Manfe.jpg"), description: "Luca Manfé was a Restaurant Manager from Astoria, New York. He was the MasterChef season 4 winner in 2013, due to his three course meal impressing the judges and was praised by Gordon for his short ribs.")
        
        let courtney = Contestant(name: "Courtney Lapresi", winYear: "2014", photo: UIImage(imageLiteralResourceName: "Courtney_Lapresi.jpg"), description: "Courtney Lapresi was a Dancer from Philadelphia, Pennsylvania. She was the MasterChef season 5 winner due to her eclectic three course meal impressing the judges.")
        
        let claudia = Contestant(name: "Claudia Sandoval", winYear: "2015", photo: UIImage(imageLiteralResourceName: "Claudia_Sandoval.jpg"), description: "Claudia Sandoval was an Events Manager from La Mesa, California. She was the MasterChef season 6 winner due to her three course Mexican meal impressing the judges.")
        
        let shaun = Contestant(name: "Shaun O'Neale", winYear: "2016", photo: UIImage(imageLiteralResourceName: "Shaun_ONeale.jpg"), description: "Shaun O'Neale was a DJ from Las Vegas, Nevada. He was the MasterChef season 7 winner due to his halibut, vension and pear dishes impressing the judges.")
        
        let dino = Contestant(name: "Dino Angelo Luciano", winYear: "2017", photo: UIImage(imageLiteralResourceName: "Dino_Angelo.jpeg"), description: "Dino Angelo Luciano was a Dancer from Bensonhurst, New York. He was the MasterChef season 8 winner due to his unique menu with a twist of traditional dishes of squid ink pasta, lamb chop and tiramisu.")
        
        let gerron = Contestant(name: "Gerron Hurt", winYear: "2018", photo: UIImage(imageLiteralResourceName: "Gerron_Hurt.jpg"), description: "Gerron Hurt was an English Teacher from Louisville, Kentucky. He was the MasterChef season 9 winner due to his southern themed menu being well received by the judges.")
        
        arrayOfContestants.append(whitney)
        arrayOfContestants.append(jennifer)
        arrayOfContestants.append(christine)
        arrayOfContestants.append(luca)
        arrayOfContestants.append(courtney)
        arrayOfContestants.append(claudia)
        arrayOfContestants.append(shaun)
        arrayOfContestants.append(dino)
        arrayOfContestants.append(gerron)
        arrayOfContestants.reverse()
        
        return arrayOfContestants
    }
    
}


