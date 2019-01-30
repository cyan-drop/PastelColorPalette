//
//  ColorPaletteViewController.swift
//  DemoPalette
//
//  Created by cyan-drop on 2019/01/25.
//  Copyright © 2019 cyan. All rights reserved.
//
import UIKit




public class ColorPaletteViewController: UIViewController, PastelColorPaletteViewDelegate {
    
 
    public func colorPaletteDelegate(didSelect: UIColor) {
        
        print("delegate!")
        print(didSelect.debugDescription)
    }
   
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*let cp = PastelColorPaletteView()
        cp.delegate = self
        print(cp.delegate)
        /**/
        
        showLabel.backgroundColor = UIColor.black
        showLabel.text = "color"*/
       
        
        
    }
    


    

}
