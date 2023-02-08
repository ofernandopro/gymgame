//
//  HomeVC.swift
//  GymGame
//
//  Created by Fernando Moreira on 23/01/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var onUserViewTap:(() -> Void)?
    
    // MARK: - Variables
    
    //var homeScreen: HomeScreen = HomeScreen()
    
    lazy var homeScreen: HomeScreen = {
        let view = HomeScreen(frame: .zero)
        
        view.onUserViewTap = { [weak self] in
            self?.onUserViewTap?()
        }
        
        return view
    }()
    
    // MARK: - Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = homeScreen
        self.homeScreen.configDelegates(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

}

// MARK: - Extensions

extension HomeVC: HomeScreenDelegate {
    
    func tappedUserView() {
        //self.onTapUserView?()
        let vc = LevelsVC()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
}
