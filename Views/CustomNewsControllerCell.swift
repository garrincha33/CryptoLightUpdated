//
//  CustomNewsControllerCell.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import UIKit

class CustomNewsControllerCell: BaseCell<NewsArticles> {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupNewsFeed()
    }
    
    let usernameLable: UILabel = {
        let lable = UILabel()
        lable.text = "Username"
        lable.backgroundColor = UIColor(displayP3Red: 192/255, green: 19/155, blue: 57/277, alpha: 0.5)
        lable.textAlignment = .center
        lable.layer.cornerRadius = 16
        lable.clipsToBounds = true
        lable.layer.shadowRadius = 10
        lable.layer.shadowOpacity = 0.5
        lable.textColor = UIColor.rgb(red: 200, green: 201, blue: 202)
        lable.numberOfLines = -1
        return lable
    }()
    
    let errorLable: UILabel = {
        let lable = UILabel()
        lable.text = "Username"
        lable.textColor = .red
        lable.backgroundColor = UIColor(displayP3Red: 193/255, green: 19/155, blue: 57/255, alpha: 0.5)
        lable.textAlignment = .center
        lable.layer.cornerRadius = 16
        lable.clipsToBounds = true
        lable.layer.shadowRadius = 10
        lable.layer.shadowOpacity = 0.5
        lable.font = UIFont(name: "Poppins-Regular", size: 15)
        lable.textColor = UIColor.rgb(red: 200, green: 201, blue: 202)
        lable.numberOfLines = -1
        return lable
    }()
    override var item: NewsArticles! {
        didSet {
            usernameLable.text = item.title
            guard let image = item.urlToImage else { return }
            print("count.....\(image.count)")
            //Retrive cached image here........was using SDWebimage
            
        }
    }
    private func setupNewsFeed() {
        addSubview(titleContainer)
        titleContainer.anchor(top: titleContainer.topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 250)
        
        addSubview(usernameLable)
        usernameLable.anchor(top: titleContainer.topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
    }

    required init?(coder: NSCoder) {
        fatalError("not using stpryboards")
    }
}
