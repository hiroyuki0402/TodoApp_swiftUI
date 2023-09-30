//
//  TodoApp_swiftuiApp.swift
//  TodoApp_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/09/30.
//

import SwiftUI

@main
struct TodoApp_swiftuiApp: App {
    var body: some Scene {
        WindowGroup {
            Home()
                .environmentObject(TodoViewModel())
        }
    }
}
