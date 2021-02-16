//
//  TaskDetail.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct TaskDetail: View {
    @EnvironmentObject var todoModel: TodoModel
    @State var task: Task
    var taskIndex: Int {
        todoModel.taskList.firstIndex(where: { $0.id == task.id })!
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                UpdateTaskDetailButton(beforeValueTask: $todoModel.taskList[taskIndex], afterValueTask: task)
            }
            
            TaskStatusTabBar(selectedTab: $task.status)
            
            HStack {
                
                Text("タスク名")
                    .padding(.leading)
                    .padding(.top)
                Spacer()
            }
            TextField("タスク名", text: $task.name)
                .frame(width: UIScreen.main.bounds.size.width - 50, height: 40)
                .font(.system(size: 19, weight: .bold))
                .padding(.horizontal)
                .padding(.bottom, 5)
                .background(Color.white)
            
            HStack {
                Text("内容")
                    .padding(.leading)
                    .padding(.top)
                Spacer()
            }
            TextField("タスクの説明", text: $task.description)
                .frame(width: UIScreen.main.bounds.size.width - 50, height: 80)
                .font(.system(size: 17, weight: .regular))
                .padding(.horizontal)
                .padding(.bottom, 5)
                .background(Color.white)
            
            Spacer()
            
            
        }
        .background(Color("TaskDetailBackground"))
    }
}

struct TaskDetail_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetail(task: .init(name: "〜する", description: "あああああああああ", status: .Doing))
    }
}
