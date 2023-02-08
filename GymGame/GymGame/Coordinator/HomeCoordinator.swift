//
//  HomeCoordinator.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
        
    func start() {
        let vc = HomeVC()
        //self.navigationController.pushViewController(vc, animated: true)
        vc.onUserViewTap = {
            let coordinator = LevelsCoordinator(navigationController: self.navigationController)
            coordinator.start()
            
        }
//        vc.modalPresentationStyle = .fullScreen
//        self.navigationController.present(vc, animated: true)
        
//        vc.modalPresentationStyle = .fullScreen
//        self.navigationController.present(vc, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}
