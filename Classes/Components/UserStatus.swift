//
//  UserStatus.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 16/3/2023.
//

import SwiftUI

struct UserStatus: View {
    
    var userStatus : StatusUser
    var body: some View {
        HStack(spacing: 3) {
            Circle()
                .fill(userStatus == .Connected ? Color.Green : Color.GreyTextColor)
                .frame(width: 6, height: 6)
            Text(userStatus == .Connected ? "Online" : "Offline")
                .font(Font.custom(K.Font.interRegular, size: 10))
                .foregroundColor(Color.GreyTextColor)
            
        }.frame(alignment: .leading)
    }
}

struct UserStatus_Previews: PreviewProvider {
    static var previews: some View {
        UserStatus(userStatus: .Connected)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
