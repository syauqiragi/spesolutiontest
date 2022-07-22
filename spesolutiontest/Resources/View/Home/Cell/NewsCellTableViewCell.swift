//
//  NewsCellTableViewCell.swift
//  spesolutiontest
//
//  Created by Ahmad Syauqi Albana on 22/07/22.
//

import UIKit
import Kingfisher

class NewsCellTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func bindData(title: String, desc: String, urlImage: String) {
        titleLabel.text = title
        descLabel.text = desc
        let image = UIImage(named: "img_default")
        imgView.kf.indicatorType = .activity
        imgView.kf.setImage(with: URL(string: urlImage), placeholder: image)
    }
}
