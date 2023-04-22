//
//  ChatworkAPITokenLocalRepository.swift
//  ChatworkMessagingButtonApp
//
//  Created by 中山龍 on 2023/04/22.
//

import Foundation

struct ChatworkAPITokenLocalRepository {
    private let ChatworkAPITokenUserDefaultKey = "ChatworkAPIToken"

    func save(token: String) {
        UserDefaults.standard.set(token, forKey: ChatworkAPITokenUserDefaultKey)
    }

    func load() -> String? {
        return UserDefaults.standard.string(forKey: ChatworkAPITokenUserDefaultKey)
    }
}
