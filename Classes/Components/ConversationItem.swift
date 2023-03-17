//
//  ConversationItem.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 10/3/2023.
//

import SwiftUI

struct ConversationItem: View {
    var conversation : Conversation
    
    var body: some View {
        VStack{
            HStack(spacing: 0) {
                VStack{
                    Image(K.Images.userImage,bundle: K.bundle) // image name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.white)
                }
                .frame(width: 50,height: 70, alignment: .leading)
                VStack (alignment: .leading, spacing: 6){
                    Text(conversation.name)
                        .font(Font.custom(K.Font.interSemiBold, size: 15))
                        .foregroundColor(Color.BlackTextColor)
                        .lineLimit(1)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Text("Are you ok?")
                        .font(Font.custom(K.Font.interRegular, size: 12))
                        .foregroundColor(Color.GreyTextColor)
                        .lineLimit(1)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                .frame(maxWidth: .infinity,alignment: .center)
                .padding([.leading,.trailing],13)
                .padding([.top,.bottom],5)
                MessageStatus(status: conversation.status , date: conversation.date, numberOfMessages: 4)
                
            }
            .frame(height: 70)
            Divider()
                .padding([.leading],50)
            
            
        } .padding([.leading,.trailing],22)
    }
}


struct ConversationItem_Previews: PreviewProvider {
    static var previews: some View {
        ConversationItem(conversation: Conversation(id: 1, name: "Test", date: Date(), status: .Received))
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
