//
//  MessagingButton.swift
//  ChatworkMessagingButtonApp
//
//  Created by 中山龍 on 2023/04/16.
//

import SwiftUI

struct MessagingButton: View {
    let buttonWidth = UIScreen.main.bounds.width * 0.8

    var body: some View {
        Button {
            print("MessagingButton was pushed")
        } label: {
            VStack {
                Text("Message To Group")
                    .font(.title2)

                HStack(spacing: 0) {
                    Text("送り先：")
                    Text("GroupName")
                }
                .padding(.top, 4)
            }
            .padding()
            .frame(width: buttonWidth)
            .overlay(
                RoundedRectangle(cornerRadius: 0)
                    .stroke(Color.blue, lineWidth: 2)
           )
        }
    }
}

struct MessagingButton_Previews: PreviewProvider {
    static var previews: some View {
        MessagingButton()
    }
}
