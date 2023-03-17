//
//  RechargeView.swift
//  InstantMessaging
//
//  Created by Safouane Belkacem on 16/3/2023.
//

import SwiftUI

struct RechargeView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 0){
                Image(K.Images.bottomSheetIndicator,bundle: K.bundle)
                    .frame(width: 14,height: 14)
            }.frame(maxWidth: .infinity, alignment: .center)
            HStack(spacing: 0){
                Image(K.Images.closeBottomIcon,bundle: K.bundle)
                    .frame(width: 14,height: 14)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading],15)
            Text("Wath do you want")
            HStack(spacing: 43){
                Spacer()
                Button {
                    print("Action 1")
                } label: {
                    VStack{
                        Image(K.Images.rechargeIcon,bundle: K.bundle)
                            .frame(width: 36,height: 36,alignment: .center)
                            .padding([.top,.bottom],22)
                            .padding([.leading],25)
                            .padding([.trailing],19)
                            .background(Color.GreyBackgroundColor)
                            .cornerRadius(10)
                            .padding([.bottom],15)
                            .padding([.top],36)
                        Text("Recharge for Recharge")
                            .font(Font.custom(K.Font.interMedium, size: 14))
                            .foregroundColor(Color.BlackTextColor)
                            .frame(alignment: .center)
                    }
                    .frame(maxWidth: 93)
                    
                }
                Button {
                    print("Action 2")
                } label: {
                    VStack{
                        Image(K.Images.requestRechargeIcon,bundle: K.bundle)
                            .frame(width: 46,height: 36,alignment: .center)
                            .padding([.leading,.top,.bottom],22)
                            .padding([.trailing ],12)
                            .background(Color.GreyBackgroundColor)
                            .cornerRadius(10)
                            .padding([.bottom],15)
                            .padding([.top],36)
                        Text("Request recharge")
                            .font(Font.custom(K.Font.interMedium, size: 14))
                            .foregroundColor(Color.BlackTextColor)
                            .frame(alignment: .center)
                    }
                    .frame(maxWidth: 93)
                }
                Spacer()
            }
            .padding([.bottom],47)
        }
    }
}

struct RechargeView_Previews: PreviewProvider {
    static var previews: some View {
        RechargeView()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
