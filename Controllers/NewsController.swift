//
//  NewsController.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import UIKit

class NewsController: BaseCollectionViewController<CustomNewsControllerCell, NewsArticles>, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [NewsArticles]()
        getNews()
        collectionView.backgroundColor = UIColor.rgb(red: 38, green: 45, blue: 47)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 3 * 8) / 2 + 155
        return CGSize(width: width, height: width - 70)
    }
    
    private func getNews() {
        APIService.shared.fetchNews() { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case.success(let news):
                    self.items = news
                case.failure(let error):
                    print(error.localizedDescription)
                }
                self.collectionView.reloadData()
            }
        }
    }
}


