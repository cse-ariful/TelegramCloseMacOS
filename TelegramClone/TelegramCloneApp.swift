//
//  TelegramCloneApp.swift
//  TelegramClone
//
//  Created by Md. MA-Ariful Jannat on 2/11/23.
//

import SwiftUI

@main
struct TelegramCloneApp: App {
    @State private var isDarkMode = true
    var body: some Scene {
        WindowGroup {
            ContentView()
                .foregroundColor(.white)
                .onChange(of: isDarkMode) { newValue in
                    // Set the color scheme based on the Toggle state
                    if newValue {
                        AppKit.NSApplication.shared.appearance = NSAppearance(named: .darkAqua)
                    } else {
                        AppKit.NSApplication.shared.appearance = NSAppearance(named: .aqua)
                    }
                }
        }
        .commands{
            CommandGroup(replacing: .newItem) {}
            CommandGroup(replacing: .pasteboard) {}
            CommandGroup(replacing: .undoRedo) {}
            CommandGroup(replacing: .toolbar) {}
            CommandMenu("Contact") {
                // Add a "Add Contact" submenu
                Button("Add Contact") {
                    // Add your action code for adding a contact here
                }
                
                // Add a "Mark as Favorite" submenu
                Button("Mark as Favorite") {
                    // Add your action code for marking as a favorite here
                }
                
                // Add a "Remove from Favorite" submenu
                Button("Remove from Favorite") {
                    // Add your action code for removing from favorites here
                }
                
                // Add a "Delete Contact" submenu
                Button("Delete Contact") {
                    // Add your action code for deleting a contact here
                }
                
                // Add a "Block Contact" submenu
                Button("Block Contact") {
                    // Add your action code for blocking a contact here
                }
            }
        }
    }
}
