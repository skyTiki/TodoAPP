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
        NavigationView {
            VStack{
                List {
                    ForEach(todoModel.taskList) { task in
                        HStack {
                            Text(task.name)
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            
                            Text(task.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .padding(.leading, 6)
                        }
                    }
                }
                .navigationTitle("TodoList")
                .navigationBarItems(trailing: Button(action: {
                    
                }) {
                    Text("+")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                        .background(Color("Accent2"))
                        .cornerRadius(18)
                })
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
            .environmentObject(TodoModel())
    }
}
