//
//  DiscussionScreenView.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 16/3/2023.
//

import SwiftUI
import BottomSheetSwiftUI

struct DiscussionScreenView: View {
    var conversation : Conversation
    
    @State var bottomSheetPosition: BottomSheetPosition = .hidden
    
    
    func sendMessage() {
        
    }
    func requestRecharge() {
        bottomSheetPosition = .dynamic
    }
    func closeBottomSheet() {
        bottomSheetPosition = .hidden
    }
    var body: some View {
        
        VStack {
            HeaderConversation(userName: conversation.name)
                .navigationBarBackButtonHidden(true)
            ScrollView{
                
            }
            DiscussionInput(sendMessage: sendMessage, requestRecharge: requestRecharge)
        }
        .background(Color.White)
        .background(Color.ExtraLightGrey.edgesIgnoringSafeArea(.bottom))
        .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, switchablePositions: [
            .dynamic
        ]) {
            RechargeView(closeBottomSheet:  closeBottomSheet)
        }
        .showDragIndicator(false)
        .enableBackgroundBlur(true)
        .backgroundBlurMaterial(.dark(.default))
        .enableTapToDismiss(true)
    }
}

struct DiscussionScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionScreenView(conversation: Conversation(id: 1, name: "test", date: Date(), status: .Seen))
    }
}
