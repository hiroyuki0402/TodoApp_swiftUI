//
//  Home.swift
//  TodoApp_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/09/30.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject private var todoViewModel: TodoViewModel

    
    var body: some View {

        NavigationView {
            List {
                ForEach(todoViewModel.todoDatas) { data in

                    Button {
                        if let index = todoViewModel.todoDatas.firstIndex(of: data) {
                            todoViewModel.todoDatas[index].isChecked.toggle()
                        }
                    } label: {
                        TodoCell(todoData: data)
                    }
                }

                if todoViewModel.isAddTodo {
                    Inputed()
                } else {
                    Button {
                        todoViewModel.isAddTodo.toggle()
                    } label: {
                        Text("+")
                            .font(.title)
                    }

                }

            }
            
            .navigationTitle("タスク一覧")
            .navigationBarItems(trailing: Button(action: {
                if todoViewModel.isAddTodo {
                    todoViewModel.isAddTodo.toggle()
                } else {
                    removeTodo()
                }
            }, label: {
                if todoViewModel.isAddTodo {
                    Text("キャンセル")
                } else {
                    Text("削除")
                }

            }))


        }
    }
    private func removeTodo() {
        let newTodos = todoViewModel.todoDatas.filter { data in
            !data.isChecked
        }
        todoViewModel.todoDatas = newTodos
    }

}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
