//
//  UpdateTaskDetailButton.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct UpdateTaskDetailButton: View {
    @Binding var beforeValueTask: Task
    let afterValueTask: Task
    
    var body: some View {
        Button(action: {
            beforeValueTask = afterValueTask
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
}

struct UpdateTaskDetailButton_Previews: PreviewProvider {
    static var previews: some View {
        UpdateTaskDetailButton(beforeValueTask: .constant(.init(name: "", description: "", status: .Doing)), afterValueTask: .init(name: "", description: "", status: .Doing))
    }
}
