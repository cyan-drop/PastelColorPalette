# PastelColorPalette


## Overview
You can select colors from pastel color palettes.

## Description
It is a palette that allows users to easily select colors, and palette colors are chosen to be easy to see with texts and graphs.

This is useful when the user selects a color, especially when you want to use many colors like labeling.
## Usage
This library is created with the assumption of using a storyboard.

1. After placing the ViewController on the storyboard, inherit the `PastelColorPaletteViewController` and `PastelColorPaletteView` class using the Attribute inspector.
2. Please set a delegate for the object you want to notify.

    ```Swift
    //example
    let pastelColorPaletteVC = PastelColorPaletteViewController()
    pastelColorPaletteVC.delegate = self
    ```

3. You can also set the processing you want to execute when receiving notifications.
    
    ```Swift
    //example
    func paletteViewController(color: UIColor){
        self.backgroundColor = color
        print(color.debagScription)
    }
    ```

## Install


## Licence

[MIT](https://github.com/cyan-drop/PastelColorPalette/blob/master/LICENSE)

