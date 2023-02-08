//
//  LevelsScreen.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

class LevelsScreen: UIView {
    
    

    // MARK: - Elements
    
    lazy var tableView: UITableView = {
       let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .orange
        tv.separatorStyle = .none
        tv.showsVerticalScrollIndicator = false
        tv.register(LevelTableViewCell.self, forCellReuseIdentifier: LevelTableViewCell.identifier)
        
        return tv
    }()
    
    // MARK: - Overrides
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    
    private func addElements() {
        self.addSubview(tableView)
    }
    
    public func configDelegates(tableViewDelegate: UITableViewDelegate, tableViewDataSource: UITableViewDataSource) {
        self.tableView.delegate = tableViewDelegate
        self.tableView.dataSource = tableViewDataSource
    }
    
    // MARK: - Constraints
    
    private func configConstraints() {
        
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),

        ])
        
    }
    
}
