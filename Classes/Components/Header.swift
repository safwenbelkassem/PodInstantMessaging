//
//  Header.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 10/3/2023.
//

import SwiftUI

struct Header: View {
    init() {
       
    }
    
    var body: some View {
        HStack(spacing: 0) {
            VStack{
                Text("Edit")
                    .font(Font.custom(K.Font.interRegular, size: 14))
                    .foregroundColor(Color.OrangePrimary)
            }
            .frame(width: 70, alignment: .leading)
            VStack{
                Text("Chats")
                    .font(Font.custom(K.Font.interRegular, size: 14))
                    .foregroundColor(Color.BlackTextColor)
                    
            }
            .frame(alignment: .center)
            .frame(minWidth: 0 , maxWidth: .infinity)
            VStack{
                Image(K.Images.editIcon,bundle: K.bundle) // image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.white)
            }
            .frame(width: 70 ,alignment: .trailing)
        }
        .frame( height: 40)
        .padding([.leading,.trailing],22)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
