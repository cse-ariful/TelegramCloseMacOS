//
//  HomeView.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI
struct HomeView :View {
    @State var searchText:String = ""
    @State var chats = dummyChatListData()
    @State var selectedChat:ChatListItemModel? = nil
    var body: some View {
        ZStack{ NavigationSplitView(sidebar: {
            ChatListView(searchText: $searchText, chats: $chats, selectedChat: $selectedChat)
                .frame(minWidth: 300)
        },detail: {
            if selectedChat != nil{
                ConversationView(chat: $selectedChat)
            }else{
                Text("Select a chat to start messaging")
                    .padding(.horizontal,8)
                    .padding(.vertical,4)
                    .background(Color(hex: "#212C39"))
                    .cornerRadius(70)
            }
        })
        }.background(Color(hex: "#101620"))
    }
}
struct HomeViewOld: View {
    @State var searchText:String = ""
    @State var chats = dummyChatListData()
    @State var selectedChat:ChatListItemModel? = nil
    var body: some View {
        ZStack{
            GeometryReader{gr in
                NavigationView{
                    ChatListView(searchText: $searchText, chats: $chats, selectedChat: $selectedChat)
                        .frame(minWidth: 300)
                    if gr.size.width > 700 {
                        if selectedChat != nil{
                            ConversationView(chat: $selectedChat)
                        }else{
                            Text("Select a chat to start messaging")
                                .padding(.horizontal,8)
                                .padding(.vertical,4)
                                .background(Color(hex: "#212C39"))
                                .cornerRadius(70)
                        }
                    }
                }
                
            }
            .navigationTitle(selectedChat?.title ?? "Chats")
            
        }
        .background(Color(hex: "#101620"))
    }
}




#Preview {
    HomeView()
}
