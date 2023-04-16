//
//  GroupChatInformationRepository.swift
//  ChatworkMessagingButtonApp
//
//  Created by 中山龍 on 2023/04/16.
//

import Foundation

struct GroupChatInformationRepository {
    private let chatworkAPIToken: String

    init(chatworkAPIToken: String) {
        self.chatworkAPIToken = chatworkAPIToken
    }

    // ルーム一覧を取得
    func getRoomList() async throws -> [ChatInformation] {
        let headers = [
            "accept": "application/json",
            "x-chatworktoken": chatworkAPIToken
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://api.chatwork.com/v2/rooms")! as URL, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let (data, _) = try await URLSession.shared.data(for: request as URLRequest)
        let response = try JSONDecoder().decode([ChatInformation].self, from: data)
        return response
    }
}
