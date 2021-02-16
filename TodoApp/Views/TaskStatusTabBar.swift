//
//  TaskStatusTabBar.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct TaskStatusTabBar: View {
    @State var selectedTab: TaskStatus
    @Namespace var namespace
    
    var body: some View {
        HStack {
            ForEach(TaskStatus.allCases, id: \.self) { status in
                StatusTabButton(selectedButton: $selectedTab, selfButtonStatus: status, namespace: namespace)
            }
        }
        .frame(width: 300, height: 50)
        .background(Color("TabBackGround"))
        .cornerRadius(25)
    }
}

struct TaskStatusTabBar_Previews: PreviewProvider {
    static var previews: some View {
        TaskStatusTabBar(selectedTab: .Doing)
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
