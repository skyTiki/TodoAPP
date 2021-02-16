//
//  TodoList.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var todoModel: TodoModel
    @State var selectedTab: TaskStatus
    
    var filteredTaskList: [Task] {
        todoModel.taskList.filter {
            $0.status == selectedTab
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                TaskStatusTabBar(selectedTab: $selectedTab)
                List {
                    ForEach(filteredTaskList) { task in
                        NavigationLink(destination: TaskDetail(task: task)){
                            HStack {
                                Text(task.name)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("TextColor"))
                                
                                Text(task.description)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .padding(.leading, 6)
                            }
                        }
                    }
                }
                .cornerRadius(20)
                .navigationTitle("TodoList")
                .navigationBarItems(trailing: Button(action: {
                    
                }) {
                    Text("+")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(Color("Accent2"))
                        .cornerRadius(15)
                })
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList(selectedTab: TaskStatus.Doing)
            .environmentObject(TodoModel())
    }
}
