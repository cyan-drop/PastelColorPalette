//
//  PastelColorPaletteView.swift
//  DemoPalette
//
//  Created by 泉 on 2019/01/25.
//  Copyright © 2019 cyan. All rights reserved.
//

import Foundation
import UIKit



public protocol PastelColorPaletteViewDelegate: NSObjectProtocol {
    func colorPaletteDelegate(colorPaletteView: PastelColorPaletteView, didSelect: UIColor)
    
}



public class PastelColorPaletteView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    
    
    @IBOutlet weak var colorPaletteCollection: UICollectionView!
    
   
    
    weak public var delegate: PastelColorPaletteViewDelegate?

    var selectIndex: UIColor = UIColor.white
    private func didSelect(color: UIColor){
        self.color = color
        colorPaletteCollection.backgroundColor = color
        ColorPaletteViewController().view.backgroundColor = color//
        print("d")
        print(type(of: delegate))
        self.delegate?.colorPaletteDelegate(colorPaletteView: self, didSelect: color)
        
    }
    
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.ef_init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.ef_init()
    }
    
    public var color: UIColor {
        get {
            return selectIndex
        }
        set {
            self.selectIndex = newValue
        }
    }
    

    private let colors: [UIColor] = [
        /*pink,DeepOrange,Orange,yellow*/
        UIColor(hex: "F8BBD0"),UIColor(hex: "FFCCBC"),UIColor(hex: "FFE0B2"),UIColor(hex: "FFF9C4"),
        UIColor(hex: "F06292"),UIColor(hex: "FF8A65"),UIColor(hex: "FFB74D"),UIColor(hex: "FFF176"),
        UIColor(hex: "E91E63"),UIColor(hex: "FF5722"),UIColor(hex: "FF9800"),UIColor(hex: "FFEB3B"),
        UIColor(hex: "C2185B"),UIColor(hex: "E64A19"),UIColor(hex: "F57C00"),UIColor(hex: "FBC02D"),
        /*Blue,cyan,liteGreen,teal*/
        UIColor(hex: "BBDEFB"),UIColor(hex: "B2EBF2"),UIColor(hex: "DCEDC8"),UIColor(hex: "B2DFDB"),
        UIColor(hex: "64B5F6"),UIColor(hex: "4DD0E1"),UIColor(hex: "AED581"),UIColor(hex: "4DB6AC"),
        UIColor(hex: "2196F3"),UIColor(hex: "00BCD4"),UIColor(hex: "8BC34A"),UIColor(hex: "009688"),
        UIColor(hex: "1976D2"),UIColor(hex: "0097A7"),UIColor(hex: "689F38"),UIColor(hex: "00796B"),
        /*purple,indigo,blueGray,gray*/
        UIColor(hex: "E1BEE7"),UIColor(hex: "C5CAE9"),UIColor(hex: "CFD8DC"),UIColor(hex: "BDBDBD"),
        UIColor(hex: "BA68C8"),UIColor(hex: "7986CB"),UIColor(hex: "90A4AE"),UIColor(hex: "9E9E9E"),
        UIColor(hex: "9C27B0"),UIColor(hex: "3F51B5"),UIColor(hex: "607D8B"),UIColor(hex: "757575"),
        UIColor(hex: "7B1FA2"),UIColor(hex: "303F9F"),UIColor(hex: "455A64"),UIColor(hex: "616161")]
    
  
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
  
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pastelColorCell", for: indexPath) as! PastelColorCell
        cell.backgroundColor = colors[indexPath.item]
        
        let selectedCell = UIView(frame: cell.frame)
        selectedCell.backgroundColor = .clear
        selectedCell.layer.borderColor = UIColor(hex: "424242").cgColor
        selectedCell.layer.borderWidth = 3.0
        cell.selectedBackgroundView = selectedCell
    
        
    
        
        return cell
    }
    
    private func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    private func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    private func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelect(color: colors[indexPath.row])
        selectIndex = colors[indexPath.row]
        //self.delegate?.colorPaletteDelegate(colorPaletteView: self, didSelect: colors[indexPath.row])
        
        

        
        
    }
    
    
    
    public func collectionView(_ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath) -> CGSize {
    //　横幅を画面サイズの約半分にする
        let cellSize:CGFloat = self.frame.width/5 - 2
        return CGSize(width: cellSize, height: cellSize/3)
    }
  
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    private func ef_init() {
        /*if #available(iOS 11.0, *) {
            self.accessibilityIgnoresInvertColors = true
        }
        self.accessibilityLabel = "color_selection_view"
        */
        self.backgroundColor = UIColor.white
        
    }
  
  
    
    

}
