//
//  ConversationView.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI

struct ConversationView: View ,DropDelegate{
    func performDrop(info: DropInfo) -> Bool {
         print("Perform Drop")
        return true
    }
    
    @Binding var chat:ChatListItemModel?
    @State var messageInput = ""
    @State var messages:[MessageItemModel] = sampleConversations().shuffled()
    @State private var image = Image(systemName: "photo")
    @State private var isDropping = false
   
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    HStack{
                        VStack(alignment:.leading,spacing: 6){
                            Text(chat?.title ?? "")
                                .font(.headline)
                            Text("Last seen recently")
                                .font(.subheadline)
                                .opacity(0.5)
                        }
                        Spacer()
                        HoverEffectIcon(iconName: "ic_search")
                        HoverEffectIcon(iconName: "ic_call")
                        HoverEffectIcon(iconName: "ic_split")
                        HoverEffectIcon(iconName: "ic_more_vert")
                    }
                    .padding(.horizontal,16)
                    .padding(.vertical,6)
                    .background(Color(hex: "#19212A"))
                }
                Spacer()
                GeometryReader {gr in
                    ScrollView{
                        LazyVStack(spacing: 12) {
                            ForEach(messages) {message in
                                HStack{
                                    if message.isMe{
                                        Spacer()
                                        ConversationMessageWidget(message:message)
                                        .background(Color(hex: "#345175"))
                                        .cornerRadius(12)
                                        .padding(.leading,gr.size.width * 0.25)
                                        .overlay(alignment:.bottomTrailing){
                                            Image(systemName: "arrowtriangle.down.fill")
                                                .foregroundColor(Color(hex: "#345175"))
                                                .font(.title)
                                                .rotationEffect(.degrees(-45))
                                                .offset(x: 8,y: 8)
                                            
                                        }
                                    }else {
                                        ConversationMessageWidget(message:message)
                                        .background(Color(hex:"#1B2532"))
                                        .cornerRadius(12)
                                        .padding(.trailing,gr.size.width * 0.25)
                                        .overlay(alignment:.bottomLeading){
                                            Image(systemName: "arrowtriangle.down.fill")
                                                .foregroundColor(Color(hex:"#1B2532"))
                                                .font(.title)
                                                .rotationEffect(.degrees(45))
                                                .offset(x: -8,y: 8)
                                            
                                        }
                                        Spacer()
                                        
                                    }
                                }
                                .padding(.horizontal,12)
                            }
                        } 
                    }
                }
                HStack(spacing:2){
                    HoverEffectIcon(iconName: "ic_attachment")
                        .rotationEffect(.degrees(-45))
                    TextField("Write a message",text: $messageInput)
                        .textFieldStyle(.plain)
                        .padding(12)
                        .onSubmit{
                            sendMessage()
                        }
                    HoverEffectIcon(iconName: "ic_emoji")
                    if messageInput.isEmpty{
                        HoverEffectIcon(iconName: "ic_mic")
                    }else{
                        HoverEffectIcon(iconName: "ic_send",color:Color(hex: "#5E87BC"),onTap: {
                            sendMessage()
                        })
                            .foregroundColor(.blue)
                    }
                }
                .padding(.vertical,4)
                .padding(.horizontal,16)
                .background(Color(hex: "#19212A"))
                
            }
            .background(Color(hex: "#101620"))
            
            VStack{
                Spacer()
                Text(isDropping ? "Drop image here" : "")
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                    .background(isDropping ? .gray : .clear)
                    .cornerRadius(12)
                    .dropDestination(for: Data.self) { items, location in
                        guard let item = items.first else { return false }
                         
    //                    guard let uiImage = UIImage(data: item) else { return false }
    //                    image = Image(uiImage: uiImage)
                        return true
                    }isTargeted: { targeted in
                        print("Targeted \(targeted)")
                        withAnimation{ isDropping = targeted }
                        
                    }
            }
            .allowsTightening(false)
        }
        
    }
    func sendMessage(){
        guard !messageInput.isEmpty else{
            return
        }
        withAnimation{
            let isMe = Int.random(in: 0...1000) % 2 == 0
            let messageItem = MessageItemModel(
                id: messages.count + 1,
                isMe: isMe,
                sentAt: Date(),
                message: messageInput,
                images: [], // Set to nil for no images in this example
                senderImage: "https://picsum.photos/id/\(messages.count + 1)/200/200"
            )

            messages.append(messageItem)
            messageInput = ""
        }
    }
}

struct ConversationMessageWidget : View {
    let message:MessageItemModel
    var body: some View {
        VStack(alignment:message.isMe ? .trailing : .leading){
            if !message.images.isEmpty{
                VStack{
                    AsyncImage(url: URL(string: message.images.first!)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .padding()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        case .failure(_):
                            EmptyView()
                        @unknown default:
                            EmptyView()
                        }
                    }
                }
            }
            HStack{
                Text(message.message ?? "")
                    .font(.system(size: 14,weight: .medium))
            }
            .padding(12)
             
        }
    }
}

//#Preview {
//    ConversationView(chat: dummyChatListData()[0])
//}
