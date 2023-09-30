//
//  Inputed.swift
//  TodoApp_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/09/30.
//

import SwiftUI

struct Inputed: View {
    @State var title: String = ""
    @EnvironmentObject var viewModel: TodoViewModel

    var body: some View {
        TextField("タスクを入力してください", text: $title)
            .padding()
            .onSubmit {
                createTodo()

            }
    }

    private func createTodo() {
        let createTodo: TodoData = .init(title: title, isChecked: false)
        viewModel.todoDatas.append(createTodo)
        title = ""

    }
}

struct Inputed_Previews: PreviewProvider {
    static var previews: some View {
        Inputed()
    }
}
