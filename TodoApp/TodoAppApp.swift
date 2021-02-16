//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by tichige on 2021/02/16.
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
