//
//  SearchField.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI

struct SearchField : View {
    @Binding var searchText:String
    let hint:String
    var body: some View {
        HStack{
            TextField("", text: $searchText,prompt: Text(hint).foregroundColor(.white))
                .padding(.horizontal,12)
                .padding(.vertical,8)
                .font(.system(size: 16,weight: Font.Weight.medium))
                 
            if !searchText.isEmpty{
                HoverEffectIcon(iconName: "ic_close"){
                    searchText = ""
                }
                    .frame(width: 24,height: 24)
                    .foregroundColor(.gray)
                    .padding(12)
            }
        }
        .foregroundColor(.white)
        .background(Color.clear)
        .border(Color.clear, width: 1)
        .textFieldStyle(.plain)
        .frame(height: 38)
        .background(
            RoundedRectangle(cornerRadius: 100)
                .fill(Color(hex: "#262F3C"))
        )
        
    }
}
