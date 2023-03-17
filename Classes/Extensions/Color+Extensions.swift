//
//  Color+Extensions.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 10/3/2023.
//

import Foundation
import SwiftUI

extension Color {
    static let OrangePrimary = Color("Orange_Primary",bundle: K.bundle)
    static let ExtraLightGrey = Color("Extra_Light_Grey",bundle: K.bundle)
    static let LightGrey = Color("Light_Grey",bundle: K.bundle)
    static let BlackTextColor = Color("Black_Text_Color",bundle: K.bundle)
    static let GreyTextColor = Color("Grey_Text_Color",bundle: K.bundle)
    static let Green = Color("Green",bundle: K.bundle)
    static let White = Color("White",bundle: K.bundle)
    static let GreyBackgroundColor = Color("Grey_Background_Color",bundle: K.bundle)

    
    init?(_ hex: String) {
        var str = hex
        if str.hasPrefix("#") {
          str.removeFirst()
        }
        if str.count == 3 {
          str = String(repeating: str[str.startIndex], count: 2)
            + String(repeating: str[str.index(str.startIndex, offsetBy: 1)], count: 2)
            + String(repeating: str[str.index(str.startIndex, offsetBy: 2)], count: 2)
        } else if !str.count.isMultiple(of: 2) || str.count > 8 {
          return nil
        }
        guard let color = UInt64(str, radix: 16)
        else {
          return nil
        }
        if str.count == 2 {
          let gray = Double(Int(color) & 0xFF) / 255
          self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: 1)
        } else if str.count == 4 {
          let gray = Double(Int(color >> 8) & 0x00FF) / 255
          let alpha = Double(Int(color) & 0x00FF) / 255
          self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: alpha)
        } else if str.count == 6 {
          let red = Double(Int(color >> 16) & 0x0000FF) / 255
          let green = Double(Int(color >> 8) & 0x0000FF) / 255
          let blue = Double(Int(color) & 0x0000FF) / 255
          self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1)
        } else if str.count == 8 {
          let red = Double(Int(color >> 24) & 0x000000FF) / 255
          let green = Double(Int(color >> 16) & 0x000000FF) / 255
          let blue = Double(Int(color >> 8) & 0x000000FF) / 255
          let alpha = Double(Int(color) & 0x000000FF) / 255
          self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
        } else {
          return nil
        }
      }
    }
