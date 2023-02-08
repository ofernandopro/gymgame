//
//  HomeScreen.swift
//  GymGame
//
//  Created by Fernando Moreira on 23/01/23.
//

import UIKit

protocol HomeScreenDelegate: AnyObject {
    func tappedUserView()
}

class HomeScreen: UIView {
    
    var onUserViewTap:(() -> Void)?
    
    private weak var delegate: HomeScreenDelegate?

    // MARK: - Elements
    
    lazy var headerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Colors.appWhite
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        return view
    }()
    
    lazy var appLogoImageView: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "app_logo")
        return img
    }()
    
    lazy var userView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Colors.appLightGray
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapUserView))
        view.addGestureRecognizer(tap)
        return view
    }()
    
    lazy var offensiveView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Colors.appPrimary
        view.layer.cornerRadius = 10
        return view
    }()

    lazy var offensiveImageView: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "ic_fire_1x")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    lazy var offensiveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "17"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    lazy var gymBackgroundImageView: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "gym_background")
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var userCharacterImageView: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "level_03_man")
        return img
    }()
    
    lazy var levelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nível 3 - Em Progresso"
        label.textColor = Colors.customRed
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var xpStackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.spacing = 4
        return sv
    }()
    
    lazy var xpLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1020 XP"
        label.textColor = Colors.customBlue
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var xpImage: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "ic_xp_1x")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    // MARK: - Inits
    
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
        self.addSubview(headerView)
        headerView.addSubview(appLogoImageView)
        self.addSubview(userView)
        userView.addSubview(gymBackgroundImageView)
        userView.addSubview(userCharacterImageView)
        userView.addSubview(offensiveView)
        offensiveView.addSubview(offensiveImageView)
        offensiveView.addSubview(offensiveLabel)
        userView.addSubview(levelLabel)
        userView.addSubview(xpStackView)
        xpStackView.addArrangedSubview(xpLabel)
        xpStackView.addArrangedSubview(xpImage)
    }

    public func configDelegates(delegate: HomeScreenDelegate) {
        self.delegate = delegate
    }
    
    // MARK: - objc functions
    
    @objc func handleTapUserView(_ sender: UITapGestureRecognizer) {
        self.onUserViewTap?()
        delegate?.tappedUserView()
    }
    
    // MARK: - Constraints
    
    private func configConstraints() {
        
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.leftAnchor.constraint(equalTo: leftAnchor),
            headerView.rightAnchor.constraint(equalTo: rightAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 180),
            
            appLogoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            appLogoImageView.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 20),
            appLogoImageView.widthAnchor.constraint(equalToConstant: 170),
            appLogoImageView.heightAnchor.constraint(equalToConstant: 30),
            
            userView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            userView.leftAnchor.constraint(equalTo: leftAnchor),
            userView.rightAnchor.constraint(equalTo: rightAnchor),
            userView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            offensiveView.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 10),
            offensiveView.topAnchor.constraint(equalTo: userView.topAnchor, constant: 30),
            offensiveView.widthAnchor.constraint(equalToConstant: 110),
            offensiveView.heightAnchor.constraint(equalToConstant: 50),
            
            offensiveImageView.leadingAnchor.constraint(equalTo: offensiveView.leadingAnchor, constant: 20),
            offensiveImageView.bottomAnchor.constraint(equalTo: offensiveView.bottomAnchor, constant: 4),
            offensiveImageView.widthAnchor.constraint(equalToConstant: 50),
            offensiveImageView.heightAnchor.constraint(equalToConstant: 80),
            
            offensiveLabel.leadingAnchor.constraint(equalTo: offensiveImageView.trailingAnchor, constant: -15),
            offensiveLabel.bottomAnchor.constraint(equalTo: offensiveView.bottomAnchor, constant: 2),
            
            appLogoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            appLogoImageView.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 20),
            appLogoImageView.widthAnchor.constraint(equalToConstant: 150),
            appLogoImageView.heightAnchor.constraint(equalToConstant: 30),
            
            levelLabel.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 20),
            levelLabel.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: -20),
            levelLabel.bottomAnchor.constraint(equalTo: xpStackView.topAnchor, constant: -20),
            
            xpStackView.centerXAnchor.constraint(equalTo: userView.centerXAnchor),
            xpStackView.bottomAnchor.constraint(equalTo: userView.bottomAnchor, constant: -180),
            
            xpImage.widthAnchor.constraint(equalToConstant: 20),
            
            gymBackgroundImageView.topAnchor.constraint(equalTo: userView.topAnchor),
            gymBackgroundImageView.leadingAnchor.constraint(equalTo: userView.leadingAnchor),
            gymBackgroundImageView.trailingAnchor.constraint(equalTo: userView.trailingAnchor),
            gymBackgroundImageView.bottomAnchor.constraint(equalTo: userView.bottomAnchor),
            
            userCharacterImageView.topAnchor.constraint(equalTo: userView.topAnchor, constant: 150),
            userCharacterImageView.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 50),
            userCharacterImageView.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: -50),
            userCharacterImageView.bottomAnchor.constraint(equalTo: levelLabel.topAnchor, constant: -15),
            
        ])
        
    }
    
}
