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
    let chatworkAPIToken: String?

    init() {
        chatworkAPIToken = chatworkAPITokenLocalRepository.load()
        if chatworkAPIToken == nil {
            inputTokenOpacity = 1
        }
    }

    func onTapInputTokenOK(inputToken: String) {
        chatworkAPITokenLocalRepository.save(token: inputToken)
    }
}
