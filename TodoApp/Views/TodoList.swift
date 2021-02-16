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
    
    var body: some View {
        NavigationView {
            VStack{
                TaskStatusTabBar(selectedTab: selectedTab)
                List {
                    ForEach(todoModel.taskList) { task in
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
                .cornerRadius(20)
                .navigationTitle("TodoList")
                .navigationBarItems(trailing: Button(action: {
                    
                }) {
                    Text("+")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color("Accent2"))
                        .cornerRadius(25)
                        .offset(y: 25)
                        .padding(.bottom, 25)
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
