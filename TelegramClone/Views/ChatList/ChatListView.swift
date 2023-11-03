//
//  ChatListView.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI

struct ChatListView: View {
    @Binding var searchText:String
    @Binding var chats:[ChatListItemModel]
    @Binding var selectedChat:ChatListItemModel?
    var body: some View {
        VStack{
            HStack{
                HoverEffectIcon(iconName: "ic_menu")
                SearchField(searchText: $searchText,hint: "Search")
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal,12)
            .padding(.vertical,6)
            ScrollView{
                LazyVStack(spacing:0){
                    ForEach(chats) {chat in
                        ChatListItemWidget(chat: chat,isSelected: selectedChat?.id == chat.id) 
                            .onTapGesture {
                                withAnimation{ selectedChat = chat }
                            }
                    }
                } 
                
            }
        }
        .background(Color(hex: "#19212A"))
    }
}

struct ChatListItemWidget: View {
    let chat:ChatListItemModel
    @State var hovering:Bool = false
    let isSelected:Bool
    var body: some View {
        HStack(alignment:.center){
            AsyncImage(url: URL(string: chat.userImage)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .padding()
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                case .failure(_):
                    Circle()
                        .foregroundColor(.blue.opacity(0.3))
                        .overlay{
                            Text(chat.title.prefix(1))
                                .font(.system(size: 18,weight: .medium))
                        }
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 48,height:48)
            VStack{
                HStack{
                    Text(chat.title)
                        .font(.headline)
                    Spacer()
                    Text(chat.messageTime.formatted(date: .omitted, time: .shortened))
                }
                .padding(.bottom,1)
                HStack(alignment:.top){
                    Text(chat.lastMessage)
                        .font(.system(size: 14,weight: .medium))
                        .lineLimit(1)
                        .foregroundColor(chat.unreadCount > 0 ? Color(hex: "#5E87BC") : .gray)
                    Spacer()
                    if chat.unreadCount > 0{
                        Text("\(chat.unreadCount)")
                            .padding(6)
                            .background( Circle()
                                .foregroundColor(Color(hex: "#435368"))
                                )
                       
                    }
                    
                }
            }
        }
        .padding(.horizontal,12)
        .padding(.vertical,8)
        .background(isSelected ? Color(hex: "#345175") : hovering ? .black.opacity(0.1) : .clear)
        .contentShape(Rectangle())
        .onHover(perform: { hovering in
            withAnimation{
                self.hovering = hovering
            }
        })
    }
}

#Preview {
    HomeView()
}
