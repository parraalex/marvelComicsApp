//
//  RelatedMoviesCollectionViewCell.swift
//  AccedoFirstTrial
//
//  Created by Alejandro Parra on 16/08/20.
//  Copyright © 2020 Alejandro Parra. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var comicTitleLabel: UILabel!
    @IBOutlet weak var comicImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    func configure(with comic: Comic) {
        comicTitleLabel.text = comic.name
        comicImageView.image = comic.image
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "HomeCollectionViewCell", bundle: nil)
    }
}
