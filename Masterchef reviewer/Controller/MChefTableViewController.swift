//
//  MChefTableViewController.swift
//  Masterchef reviewer
//
//  Created by Martynas Tamulionis on 08/02/2019.
//  Copyright © 2019 nocodelimits. All rights reserved.
//

import UIKit

class MChefTableViewController: UITableViewController {
    
    var contestants = [Contestant]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contestants = Contestant.addContestantsToArray()
        setTableViewImage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(cgColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]
        title = "WINNERS"
    }
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cont = contestants[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! MChefTableViewCell
        cell.setLabels(shortContestantInfo: cont)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contestants.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contestantName = contestants[indexPath.row].name!
        let contestantDescription = contestants[indexPath.row].description!
        let contestantPhoto = contestants[indexPath.row].photo!
        guard let winnerInfoVC = storyboard?.instantiateViewController(withIdentifier: "winnerVC") as? MChefContestantViewController else { return }
        
        winnerInfoVC.prepareUiElements(name: contestantName, description: contestantDescription, photo: contestantPhoto)
        self.present(winnerInfoVC, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
//    func addNavBarTitleImage() {
        
//        let navController = UINavigationController()
//        let navBarTitleImage = UIImage(imageLiteralResourceName: "gold.jpeg")
//        let imageView = UIImageView(image: navBarTitleImage)
//
//        let bannerWidth = navController.navigationBar.frame.size.width
//        let bannerHeight = navController.navigationBar.frame.size.height
//
//        let bannerX = bannerWidth / 3 - navBarTitleImage.size.width / 3
//        let bannerY = bannerHeight / 2 - navBarTitleImage.size.height / 2
//
//        imageView.accessibilityFrame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
//        imageView.contentMode = .scaleAspectFit
//        navigationItem.titleView = imageView
//    }
    
    func setTableViewImage() {
        let backgroundImage = UIImage(imageLiteralResourceName: "MChefimage")
        let imageView = UIImageView(image: backgroundImage)
        imageView.contentMode = .scaleAspectFill
        self.tableView.backgroundView = imageView
    }
    
}
