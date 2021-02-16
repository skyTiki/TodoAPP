//
//  TodoList.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var todoModel: TodoModel
    
    var body: some View {
        Text(String(todoModel.taskList.count))
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
