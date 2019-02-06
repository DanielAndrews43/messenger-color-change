//
//  ColorTableViewCell.swift
//  ColorChange
//
//  Created by Daniel Andrews on 2/5/19.
//  Copyright © 2019 Daniel Andrews. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

    let label = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        label.center = center
        label.textAlignment = .center
        label.textColor = .black
        
        contentView.addSubview(label)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
