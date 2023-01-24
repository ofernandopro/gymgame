//
//  HomeScreen.swift
//  GymGame
//
//  Created by Fernando Moreira on 23/01/23.
//

import UIKit

class HomeScreen: UIView {

    // MARK: - Elements
    
    lazy var headerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Colors.appWhite
        return view
    }()
    
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = Colors.appLightGray
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Add Elements
    
    private func addElements() {
        self.addSubview(headerView)
    }
    
    // MARK: - Constraints
    
    private func configConstraints() {
        
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.leftAnchor.constraint(equalTo: leftAnchor),
            headerView.rightAnchor.constraint(equalTo: rightAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 200),
                
        ])
        
    }
    
}
