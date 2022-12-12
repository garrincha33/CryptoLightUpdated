//
//  CustomColor.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 12/12/2022.
//

///a quick extension to create rgb colors
///

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
