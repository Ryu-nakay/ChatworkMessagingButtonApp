//
//  GroupChatInformationRepositoryTests.swift
//  ChatworkMessagingButtonAppTests
//
//  Created by 中山龍 on 2023/04/16.
//

import XCTest

final class GroupChatInformationRepositoryTests: XCTestCase {

    func testGetRoomList() async throws {
        let token = "write_your_token"
        let repository = GroupChatInformationRepository(chatworkAPIToken: token)

        do {
            print("===================data is=================")
            let data = try await repository.getRoomList()
            print(data!)
        } catch {
            print("catch error")
        }
        
    }
}
