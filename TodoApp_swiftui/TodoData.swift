//
//  TodoData.swift
//  TodoApp_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/09/30.
//

import Foundation

struct TodoData: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var isChecked: Bool
}

