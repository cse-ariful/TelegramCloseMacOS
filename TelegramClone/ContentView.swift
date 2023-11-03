//
//  ContentView.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            HomeView()
        }
        .frame(minWidth: 350 * 2 + 5)
    }
}

#Preview {
    ContentView()
}
