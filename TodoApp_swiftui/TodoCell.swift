//
//  TodoCell.swift
//  TodoApp_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/09/30.
//

import SwiftUI

struct TodoCell: View {

    var todoData: TodoData

    var body: some View {

        HStack {

            if todoData.isChecked {
                Text("☑️")
                Text(todoData.title)
                    .strikethrough()
                    .fontWeight(.ultraLight)

            } else {

                Text("🔲")
            }
            
            Text(todoData.title)
        }
    }
}

struct TodoCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoCell(todoData: .init(title: "テストTodo作成", isChecked: true))
    }
}
