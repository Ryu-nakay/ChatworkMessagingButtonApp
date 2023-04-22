//
//  MessagingButtonListView.swift
//  ChatworkMessagingButtonApp
//
//  Created by 中山龍 on 2023/04/22.
//

import SwiftUI

struct MessagingButtonListView: View {
    @ObservedObject var viewModel = MessagingButtonListViewModel()

    var body: some View {
        ZStack {
            VStack {
                MessagingButton()
            }

            InputTokenView()
                .opacity(viewModel.inputTokenOpacity)
        }
    }
}

struct MessagingButtonListView_Previews: PreviewProvider {
    static var previews: some View {
        MessagingButtonListView()
    }
}
