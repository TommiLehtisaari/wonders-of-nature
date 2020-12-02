//
//  UIViewExtensions.swift
//  wonders-of-nature
//
//  Created by Tommi Lehtisaari on 2.12.2020.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...){
        views.forEach({addSubview($0)})
    }
    
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          topAnchor.constraint(equalTo: superView.topAnchor),
          leadingAnchor.constraint(equalTo: superView.leadingAnchor),
          trailingAnchor.constraint(equalTo: superView.trailingAnchor),
          bottomAnchor.constraint(equalTo: superView.bottomAnchor)
        ])
    }
}
