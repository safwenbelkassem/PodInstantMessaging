//
//  DiscussionScreenView.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 16/3/2023.
//

import SwiftUI

struct DiscussionScreenView: View {
    var conversation : Conversation
    @State private var showSheetRecharge = false
    
    func sendMessage() {
        
    }
    func requestRecharge() {
        showSheetRecharge.toggle()
    }
    var body: some View {
        VStack {
            HeaderConversation(userName: conversation.name)
                .navigationBarBackButtonHidden(true)
            Spacer()
            DiscussionInput(sendMessage: sendMessage, requestRecharge: requestRecharge)
                .sheet(isPresented: $showSheetRecharge) {
                    Text("This app was brought to you by Hacking with Swift")
                        
                }
        }
        .background(Color.White)
        .background(Color.ExtraLightGrey.edgesIgnoringSafeArea(.bottom))
        
    }
}

struct DiscussionScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionScreenView(conversation: Conversation(id: 1, name: "test", date: Date(), status: .Seen))
    }
}
