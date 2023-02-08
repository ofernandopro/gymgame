//
//  LevelTableViewCell.swift
//  GymGame
//
//  Created by Fernando Moreira on 24/01/23.
//

import UIKit

class LevelTableViewCell: UITableViewCell {
    
    static let identifier: String = "LevelTableViewCell"
    
    var screen: LevelCellScreen = LevelCellScreen()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.setupViews()
        self.setupConstraints()
    }
    
    private func setupViews(){
        self.contentView.addSubview(self.screen)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            self.screen.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.screen.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.screen.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            self.screen.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
