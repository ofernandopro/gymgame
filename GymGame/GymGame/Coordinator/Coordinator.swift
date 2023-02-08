//
//  File.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    func start()
    init(navigationController: UINavigationController)
}
