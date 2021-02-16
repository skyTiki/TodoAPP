//
//  TodoModel.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import Foundation


final class TodoModel: ObservableObject {
    @Published var taskList: [Task] = []
}

struct Task: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let status: TaskStatus
    
    init(name: String, description: String, status: TaskStatus) {
        self.name = name
        self.description = description
        self.status = status
    }
}

enum TaskStatus {
    case Todo,Doing,Done
}
