//
//  HomeVC.swift
//  GymGame
//
//  Created by Fernando Moreira on 23/01/23.
//

import UIKit

class HomeVC: UIViewController {

    var homeScreen: HomeScreen = HomeScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = homeScreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

}
