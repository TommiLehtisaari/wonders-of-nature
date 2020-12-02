//
//  DetailsViewController.swift
//  wonders-of-nature
//
//  Created by Tommi Lehtisaari on 2.12.2020.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var sceneImage = UIImageView()
    var titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubviews(sceneImage)
        configureSceneImage()
    }
    
    func set(natureCard: NatureCard) {
        sceneImage.image = natureCard.image
        titleLabel.text = natureCard.title
    }
    
    func configureSceneImage() {
        sceneImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sceneImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sceneImage.heightAnchor.constraint(equalToConstant: 300),
            sceneImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

import SwiftUI
struct DetailsPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            let testNatureCard = NatureCard(image: NatureImages.desert, title: "Hello title")
            let detailVC = DetailsViewController()
            detailVC.set(natureCard: testNatureCard)
            return detailVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
