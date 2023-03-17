//
//  ConversationViewModel.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 13/3/2023.
//

import Foundation
import SwiftUI

final class ConversationsViewModel : ObservableObject {
    
    @Published var conversations = [Conversation]()
    
    
    func getConversations(at index : Int) {
        print("GETTING CONVERSATIONS")
        switch index {
        case 1 :
            conversations.append(contentsOf: [
                Conversation(id: 0, name: "0Theodore Curtis", date: Date(),status: .NewMessageReceived),
                Conversation(id: 1, name: "1Theodore Curtis", date: Date(),status: .NewMessageReceived),
                Conversation(id: 2, name: "2Theodore Curtis", date: Date(),status: .Received),
                Conversation(id: 3, name: "3Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 4, name: "4Theodore Curtis", date: Date(),status: .Seen),
                Conversation(id: 5, name: "5Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 6, name: "6Theodore Curtis", date: Date(),status: .Seen),
                Conversation(id: 7, name: "7Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 8, name: "8Theodore Curtis", date: Date(),status: .Received),
                Conversation(id: 9, name: "9Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 10, name: "10Theodore Curtis", date: Date(),status: .Received)
            ])
        case 2 :
            conversations.append(contentsOf: [
                Conversation(id: 11, name: "11Theodore Curtis", date: Date(),status: .Received),
                Conversation(id: 12, name: "12Theodore Curtis", date: Date(),status: .Seen),
                Conversation(id: 13, name: "13Theodore Curtis", date: Date(),status: .Seen),
                Conversation(id: 14, name: "14Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 15, name: "15Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 16, name: "16Theodore Curtis", date: Date(),status: .Received),
                Conversation(id: 17, name: "17Theodore Curtis", date: Date(),status: .Received),
                Conversation(id: 18, name: "18Theodore Curtis", date: Date(),status: .NewMessageReceived),
                Conversation(id: 19, name: "19Theodore Curtis", date: Date(),status: .Sent),
                Conversation(id: 20, name: "20Theodore Curtis", date: Date(),status: .Received)
            ])
        default:
            break
        }
    }
}
