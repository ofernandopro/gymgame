//
//  LevelsVC.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

class LevelsVC: UIViewController {
    
    // MARK: - Closures
    var onTapUserView:(() -> Void)?
    
    var levelsScreen: LevelsScreen = LevelsScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.levelsScreen.configDelegates(tableViewDelegate: self, tableViewDataSource: self)
        
        self.view.backgroundColor = .link
    }
    
    override func loadView() {
        self.view = levelsScreen
    }
    
}

extension LevelsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LevelTableViewCell.identifier, for: indexPath) as? LevelTableViewCell
        //cell?.configDelegate(delegate: self)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}

extension LevelsVC: LevelsScreenDelegate {
    
    func tappedTableView() {
        print(#function)
        self.dismiss(animated: true, completion: nil)
    }
    
}
