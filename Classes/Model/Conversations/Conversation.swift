//
//  Conversations.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 13/3/2023.
//

import Foundation
import SwiftUI

struct Conversation: Identifiable, Decodable {
    let id: Int
    let name: String
    let date: Date
    let status: Status

}
