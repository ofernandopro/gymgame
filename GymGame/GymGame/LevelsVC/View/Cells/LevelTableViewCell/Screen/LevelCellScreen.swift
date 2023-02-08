//
//  LevelCellScreen.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

protocol LevelsScreenDelegate: AnyObject {
    func tappedTableView()
}

class LevelCellScreen: UIView {
    
    private weak var delegate: LevelsScreenDelegate?
    
    lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemIndigo
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapTableView))
        view.addGestureRecognizer(tap)
        return view
    }()
    
    // MARK: - objc functions
    
    @objc func handleTapTableView(_ sender: UITapGestureRecognizer) {
        //self.onUserViewTap?()
        delegate?.tappedTableView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        self.addSubview(self.view)
    }
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            view.topAnchor.constraint(equalTo: self.topAnchor),
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            view.heightAnchor.constraint(equalToConstant: 250),
            
        ])
    }
    
}
