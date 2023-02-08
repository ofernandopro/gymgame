//
//  LevelsCoordinator.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

class LevelsCoordinator: Coordinator {
    var navigationController: UINavigationController
        
    func start() {
        let vc = LevelsVC()
        
        vc.modalPresentationStyle = .fullScreen
        self.navigationController.present(vc, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}
