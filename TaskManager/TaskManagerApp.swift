//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Himanshu on 7/14/24.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Tasks") {
                Button("Add new Task") {
                    
                }
                .keyboardShortcut(KeyEquivalent("t"), modifiers: .command)
            }
            CommandGroup(after: .newItem) {
                Button("Add new Group") {
                    
                }
            }
        }
        
        WindowGroup("Special Window") {
            Text("Special Window")
                .frame(minWidth: 200, idealWidth: 300, minHeight: 200)
        }.defaultPosition(.leading)
        
        Settings {
            Text("Settings").frame(minWidth: 200, idealWidth: 200, minHeight: 200, idealHeight: 200)
        }
        
        MenuBarExtra("Menu") {
            Button("Do Something", action: {
                
            })
        }
    }
}
