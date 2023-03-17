//
//  MessageStatus.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 13/3/2023.
//

import SwiftUI

struct MessageStatus: View {
    
    var status : Status
    var date : Date
    let dateFormatterGet = DateFormatter()
    var numberOfMessages : Int
        
    
    init(status: Status, date: Date,numberOfMessages:Int) {
        self.status = status
        self.date = date
        self.numberOfMessages = numberOfMessages
        dateFormatterGet.dateFormat = "hh:mm a"
    }
    
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 6){
            Text(dateFormatterGet.string(from: date))
                .font(Font.custom(K.Font.interRegular, size: 14))
                .foregroundColor(status == .NewMessageReceived ? Color.OrangePrimary: Color.LightGrey)
                .frame( alignment: .topLeading)
            
            switch status {
            case .NewMessageReceived :
                Badge(numberOfUnreadedMessage: 2)
                    .frame(alignment: .center)
            case .Seen :
                Image(K.Images.messageSeenIcon,bundle: K.bundle)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color.white)
            case .Sent :
                Image(K.Images.messageSentIcon,bundle: K.bundle)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color.white)
            case .Received :
                Text("")
                    .frame(width: 14, height: 14)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(width : 70,height: 70,alignment: .trailing)
        
        
    }
}

struct MessageStatus_Previews: PreviewProvider {
    static var previews: some View {
        MessageStatus(status: .NewMessageReceived,date: Date(), numberOfMessages: 2)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
