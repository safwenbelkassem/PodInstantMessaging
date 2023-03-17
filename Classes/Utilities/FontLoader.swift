//
//  FontLoader.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 10/3/2023.
//

import Foundation

public class FontLoader {
    static public func loadFont() {
        let fonts = [K.Font.interBlack,K.Font.interBold,K.Font.interExtraBold,K.Font.interExtraLight,K.Font.interLight,K.Font.interMedium,K.Font.interRegular,K.Font.interSemiBold,K.Font.interThin]
        
        for font in fonts {
            if let fontUrl = Bundle(for: FontLoader.self).url(forResource: font, withExtension: "ttf"),
               let dataProvider = CGDataProvider(url: fontUrl as CFURL),
               let newFont = CGFont(dataProvider) {
                var error: Unmanaged<CFError>?
                if !CTFontManagerRegisterGraphicsFont(newFont, &error)
                {
                    print("Error loading Font!")
                } else {
                    print("Loaded font")
                }
            } else {
                assertionFailure("Error loading font")
            }
        }
        
    }
}


