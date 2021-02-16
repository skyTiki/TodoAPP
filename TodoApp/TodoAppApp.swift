//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

@main
struct TodoAppApp: App {
    @StateObject private var todoModel = TodoModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(todoModel)
        }
    }
}
