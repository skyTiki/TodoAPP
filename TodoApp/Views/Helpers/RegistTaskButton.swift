//
//  RegistTaskButton.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct RegistTaskButton: View {
    @Binding var todoList: [Task]
    let task: Task
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        Button(action: {
            todoList.append(task)
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("登録")
                .font(.title3)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: 100, height: 60)
                .background(Color("UpdateButton"))
                .cornerRadius(50)
        })
        .padding(.trailing)
        .padding(.top)
    }
}


struct RegistTaskButton_Previews: PreviewProvider {
    static var previews: some View {
        RegistTaskButton(todoList: .constant(TodoModel().taskList), task: .init(name: "追加タスク", description: "追加タスクの説明", status: .Todo))
    }
}
