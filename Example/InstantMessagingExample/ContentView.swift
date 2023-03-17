//
//  ContentView.swift
//  InstantMessagingExample
//
//  Created by Safouane Belkacem on 9/3/2023.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI
import InstantMessaging


struct ContentView: View {
    
    let main = ConversationsScreenView()
    
    init() {
        ConfigInstantMessaging.initPod()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: main ) {
                    Text("Go to INSTANT_MESSAGING_POD")
                        
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
