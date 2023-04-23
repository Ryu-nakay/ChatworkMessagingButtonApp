//
//  InputTokenView.swift
//  ChatworkMessagingButtonApp
//
//  Created by 中山龍 on 2023/04/16.
//

import SwiftUI

struct InputTokenView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height

    @State var inputToken = ""

    @ObservedObject var messagingButtonListViewModel: MessagingButtonListViewModel

    var body: some View {
        ZStack {
            Color.black
                .frame(
                    width: width,
                    height: height
                )
                .opacity(0.4)

            VStack {
                Text("Chatwork APIのTokenを入力してください")

                TextField("", text: $inputToken)
                    .textFieldStyle(.roundedBorder)

                Button {
                    Task {
                        await messagingButtonListViewModel.onTapInputTokenOKButton(inputToken: inputToken)
                    }
                } label: {
                    Text("OK")
                }

            }
            .frame(width: width * 0.8)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
            )
        }
    }
}

struct InputTokenView_Previews: PreviewProvider {
    static var previews: some View {
        InputTokenView( messagingButtonListViewModel: MessagingButtonListViewModel())
    }
}
