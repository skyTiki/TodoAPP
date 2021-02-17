//
//  TodoApp.swift
//  TodoApp
//
//  Created by skytiki on 2021/02/16.
//

import SwiftUI

@main
struct TodoApp: App {
    @StateObject private var todoModel = TodoModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(todoModel)
        }
    }
}
