//
//  Badge.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 10/3/2023.
//

import SwiftUI

struct Badge: View {
    var numberOfUnreadedMessage : Int
    
    init(numberOfUnreadedMessage: Int){
        self.numberOfUnreadedMessage = numberOfUnreadedMessage
    }
    
    var body: some View {
        Text(String(numberOfUnreadedMessage) )
            .font(Font.custom(K.Font.interRegular, size: 11))
            .frame(width: 20,height: 20)
            .background(Color.OrangePrimary)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge(numberOfUnreadedMessage: 4)
            .previewLayout(PreviewLayout.sizeThatFits)
            .previewDisplayName("Default preview")
    }
}
