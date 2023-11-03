//
//  MessageItemModel.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import Foundation
struct MessageItemModel : Identifiable{
    let id:Int
    let isMe:Bool
    let sentAt:Date
    let message:String? 
    let images:[String]
    let senderImage:String
}
