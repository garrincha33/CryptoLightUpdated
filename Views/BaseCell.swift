//
//  BaseCell.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import UIKit

class BaseCell<U>: UICollectionViewCell {
    
    var item: U! //used for didSet observer in custom cells
    
    let titleContainer: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.darkGray
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.5
        return view
    }()
}
