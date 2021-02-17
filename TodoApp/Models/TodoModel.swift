//
//  TodoModel.swift
//  TodoApp
//
//  Created by skytiki on 2021/02/16.
//

import Foundation


final class TodoModel: ObservableObject {
    @Published var taskList: [Task] = createTaskList()
}

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var status: TaskStatus
    
    init(name: String, description: String, status: TaskStatus) {
        self.name = name
        self.description = description
        self.status = status
    }
}

enum TaskStatus: String,CaseIterable {
    case Todo,Doing,Done
}

func createTaskList() -> [Task] {
    var taskList: [Task] = []
    for num in 0...30 {
        let task: Task = .init(name: "タスク\(num)", description: "タスク\(num)の説明です", status: num < 10 ? .Todo : .Doing)
        taskList.append(task)
    }
    return taskList
}

