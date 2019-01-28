//
//  CollectionViewCell.swift
//  DemoPalette
//
//  Created by 泉 on 2019/01/25.
//  Copyright © 2019 cyan. All rights reserved.
//

import UIKit

class PastelColorCell: UICollectionViewCell {
/*    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // cellの枠の太さ
        
    }*/
    func cellSelected(){
        self.layer.borderWidth = 1.0
        // cellの枠の色
        self.layer.borderColor = UIColor(hex: "E0E0E0").cgColor
    }
}
