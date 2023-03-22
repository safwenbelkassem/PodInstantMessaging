//
//  MainView.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 9/3/2023.
//

import SwiftUI
import BottomSheetSwiftUI

public struct ConversationsScreenView: View {
    
    @ObservedObject private var vm = ConversationsViewModel()
    @State var page = 1
    
    
    public init() {
        vm.getConversations(at: 1)
    }
    
    public var body: some View {

        NavigationView {
            ScrollView(showsIndicators: false){
                Header()
                SearchInput()
                LazyVStack{
                    ForEach(vm.conversations) { conversation in
                        let conversationIndex = conversation.id
                        NavigationLink {
                            DiscussionScreenView(conversation: conversation)
                        } label: {
                            ConversationItem(conversation: conversation)
                                .onAppear{
                                    if conversationIndex == vm.conversations.count - 2 {
                                        vm.getConversations(at: page + 1)
                                        page += 1
                                    }
                                }
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .clipped()
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

struct ConversationsScreenView_Preview: PreviewProvider {
    static var previews: some View {
        ConversationsScreenView()
    }
}
