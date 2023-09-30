//
//  TodoViewModel.swift
//  TodoApp_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/09/30.
//

import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var todoDatas: [TodoData] = []
    @Published var isAddTodo: Bool = false
}
