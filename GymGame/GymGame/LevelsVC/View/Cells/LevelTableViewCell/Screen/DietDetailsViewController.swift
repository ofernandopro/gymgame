//
//  DietDetailsViewController.swift
//  DietPlanner
//
//  Created by Fernando Moreira on 01/02/23.
//

import UIKit

class DietDetailsViewController: UIViewController, UIScrollViewDelegate {

    @IBAction func actionBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionInfoButton(_ sender: Any) {
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

//        if navigationController != nil {
//
//            print("scrollViewDidScroll \(scrollView.contentOffset.y)")
//
//            //para adicionar o titulo da tela
//            if scrollView.contentOffset.y > 100 {
//                navigationController?.isNavigationBarHidden = false
//                navigationController?.navigationBar.topItem?.title = "Low Carb"
//            } else {
//                navigationController?.isNavigationBarHidden = true
//                navigationController?.navigationBar.topItem?.title = ""
//            }
//        }
        if scrollView.contentSize.height > 100 {
            navigationController?.isNavigationBarHidden = false
        } else {
            navigationController?.isNavigationBarHidden = true
        }
    }

}
