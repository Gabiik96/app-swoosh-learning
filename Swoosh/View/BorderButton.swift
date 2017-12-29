//
//  ButtonBorder.swift
//  Swoosh
//
//  Created by Gabriel Balta on 27/12/2017.
//  Copyright © 2017 Gabriel Balta. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.5
        layer.borderColor = UIColor.white.cgColor
    }

}
