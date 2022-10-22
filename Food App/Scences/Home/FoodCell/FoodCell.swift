//
//  FoodCell.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import UIKit

class FoodCell: UITableViewCell, FoodCellViewProtocol {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func displayImage(image: String) {
        foodImage.setImage(for: image)
    }
    
    func displayName(name: String) {
        foodName.text = name
    }
    
}
