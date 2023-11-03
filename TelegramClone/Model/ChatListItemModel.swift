//
//  ChatListItemModel.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import Foundation
struct ChatListItemModel: Codable,Identifiable {
    let id: Int
    let title, lastMessage: String
    let messageTime: Date
    let userImage: String
    let unreadCount:Int

    enum CodingKeys: String, CodingKey {
        case id, title
        case lastMessage = "last_message"
        case messageTime = "message_time"
        case userImage = "user_image"
        case unreadCount = "unread_count"
    }
}

