//
//  DiscussionInput.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 16/3/2023.
//

import SwiftUI

struct DiscussionInput: View {
    
    @State private var searchText: String = ""
    var sendMessage: () -> Void
    var requestRecharge: () -> Void
    
    var body: some View {
        HStack(spacing: 0){
            Button {
                requestRecharge()
            } label: {
                Image(K.Images.paymentIcon,bundle: K.bundle)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.white)
                    .padding([.trailing,.leading],14)
                    .frame(maxHeight: .infinity)
            }

            
            
            
            TextField("Type a message", text: $searchText).foregroundColor(Color.LightGrey).font(Font.custom(K.Font.interRegular, size: 14))
                .frame(height: 30)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 3))
                .background(Color.White)
                .cornerRadius(8)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            
            Button {
                sendMessage()
            } label: {
                ZStack {
                    Image(K.Images.sendIcon,bundle: K.bundle)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 17, height: 17,alignment: .center)
                }
                .frame(width: 30,height: 30)
                .background(Color.OrangePrimary)
                .cornerRadius(8)
                .padding([.trailing,.leading],12)
                .frame(maxHeight: .infinity)
            }
          

        }
        .frame(height: 50)
        .background(Color.ExtraLightGrey)
    }
}

struct DiscussionInput_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionInput(sendMessage: {}, requestRecharge: {})
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
