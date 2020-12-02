//
//  NatureCardCell.swift
//  wonders-of-nature
//
//  Created by Tommi Lehtisaari on 2.12.2020.
//

import UIKit

class NatureCardCell: UITableViewCell {
    
    var sceneImage = UIImageView()
    var titleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews(sceneImage, titleLabel)
        configureSceneImage()
        configureTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(natureCard: NatureCard) {
        sceneImage.image = natureCard.image
        titleLabel.text = natureCard.title
    }
    
    func configureSceneImage() {
        sceneImage.layer.cornerRadius = 10
        sceneImage.clipsToBounds = true
        
        sceneImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sceneImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            sceneImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            sceneImage.heightAnchor.constraint(equalToConstant: 80),
            sceneImage.widthAnchor.constraint(equalTo: sceneImage.heightAnchor, multiplier: 16/9)
        ])
    }
    
    
    func configureTitleLabel() {
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: sceneImage.trailingAnchor, constant: 20),
            titleLabel.heightAnchor.constraint(equalToConstant: 80),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12)
        ])
    }
    
}
