//
//  PastelColorPaletteViewController.swift
//  PastelColorPalette
//
//  Created by cyan-drop on 2019/01/28.
//  Copyright © 2019 cyan. All rights reserved.
//

import UIKit

public protocol PColorPaletteViewControllerDelegate: NSObjectProtocol {
    func paletteViewController(color: UIColor)
}

public class PastelColorPaletteViewController: UIViewController,PColorPaletteViewDelegate {
    
    public weak var delegate: PColorPaletteViewControllerDelegate?

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
   
    //PColorPaletteDelegate
    public func paletteView(didSelect: UIColor) {
        delegate?.paletteViewController(color: didSelect)
    }

}
