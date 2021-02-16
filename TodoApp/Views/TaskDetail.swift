//
//  TaskDetail.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct TaskDetail: View {
    @EnvironmentObject var todoModel: TodoModel
    var task: Task
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    
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
            
            TaskStatusTabBar(selectedTab: task.status)
            
            HStack {
                
                Text("タスク名")
                    .padding(.leading)
                    .padding(.top)
                Spacer()
            }
            TextField("タスク名", text: .constant(task.name))
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
            TextField("タスクの説明", text: .constant(task.description))
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
