//
//  MessagingButtonListViewModel.swift
//  ChatworkMessagingButtonApp
//
//  Created by 中山龍 on 2023/04/22.
//

import Foundation

class MessagingButtonListViewModel: ObservableObject {
    @Published var inputTokenOpacity: Double = 0
    private let chatworkAPITokenLocalRepository = ChatworkAPITokenLocalRepository()
    private let groupChatInformationRepository = GroupChatInformationRepository()
    let chatworkAPIToken: String?

    init() {
        chatworkAPIToken = chatworkAPITokenLocalRepository.load()
        if chatworkAPIToken == nil {
            inputTokenOpacity = 1
        }
    }

    func onTapInputTokenOKButton(inputToken: String) async {
        do {
            let roomList = try await groupChatInformationRepository.getRoomList(chatworkAPIToken: inputToken)

            print(roomList)
            // 正当なら保存
            chatworkAPITokenLocalRepository.save(token: inputToken)
            DispatchQueue.main.async {
                self.inputTokenOpacity = 0
            }
        } catch {
            // 例外処理
            // 後で実装しろ！！！！
        }

    }
}
