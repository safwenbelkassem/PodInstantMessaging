//
//  SearchInput.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 10/3/2023.
//

import SwiftUI

struct SearchInput: View {
    @State private var searchText: String = ""
    
    
    
    var body: some View {
        HStack {
            Image(K.Images.searchIcon,bundle: K.bundle)
                .frame(width: 13,height: 13)
            TextField("Search", text: $searchText).foregroundColor(Color.LightGrey).font(Font.custom(K.Font.interRegular, size: 14))
        }
        .padding(6)
        .background(Color.ExtraLightGrey)
        .cornerRadius(6)
        .padding([.leading,.trailing],22)
        
    }
}

struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
