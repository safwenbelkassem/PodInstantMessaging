//
//  HeaderConversation.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 16/3/2023.
//

import SwiftUI

struct HeaderConversation: View {
    var userName : String
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        HStack(spacing:0) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(K.Images.backIcon,bundle: K.bundle)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundColor(Color.white)
                    .padding([.trailing],11)
                    .frame(maxHeight: .infinity)
            }
            Image(K.Images.userImage,bundle: K.bundle) // image name
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
                .padding([.trailing],11)
            VStack(spacing: 3){
                Text(userName)
                    .font(Font.custom(K.Font.interSemiBold, size: 15))
                    .foregroundColor(Color.BlackTextColor)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity,alignment: .leading)
                UserStatus(userStatus: .Connected)
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
        }
        .frame(height: 40,alignment: .leading)
        .padding([.leading],13)
        
    }
}

struct HeaderConversation_Previews: PreviewProvider {
    static var previews: some View {
        HeaderConversation(userName: "John Doe") .previewLayout(PreviewLayout.sizeThatFits)
    }
}
