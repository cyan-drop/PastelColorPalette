//
//  ColorPaletteViewController.swift
//  DemoPalette
//
//  Created by 泉 on 2019/01/25.
//  Copyright © 2019 cyan. All rights reserved.
//
import UIKit

public protocol ViewControllerDelegate: NSObjectProtocol {
    
    // Tells the data source to return the color components.
    // @param colorViewCntroller The color view.
    // @param color The new color value.
    func viewController(_ colorViewCntroller: ColorPaletteViewController, didChangeColor color: UIColor)
}


public class ColorPaletteViewController: UIViewController, PastelColorPaletteViewDelegate {
    
    public weak var delegate: ViewControllerDelegate?
    
    public func colorPaletteDelegate(colorPaletteView: PastelColorPaletteView, didSelect: UIColor) {
        self.delegate?.viewController(self, didChangeColor: didSelect)
    }
   
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        
        showLabel.backgroundColor = UIColor.black
        showLabel.text = "color"*/
       
        
        
    }
    


    

}
