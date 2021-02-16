//
//  StatusTabButton.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct StatusTabButton: View {
    
    @Binding var selectedButton: TaskStatus
    let selfButtonStatus: TaskStatus
    var namespace: Namespace.ID
    var title: String {
        switch selfButtonStatus {
        case .Todo:
            return "これから"
        case .Doing:
            return "実行中"
        case .Done:
            return "実行済"
        }
    }
    var body: some View {
        
        ZStack {
            if selectedButton == selfButtonStatus {
                Capsule()
                    .fill(Color("TabSelected"))
                    .frame(width: 100, height: 50)
                    .matchedGeometryEffect(id: "CustomButton", in: namespace)
                
            }
            Button(action: {
                withAnimation{
                    selectedButton = selfButtonStatus
                }
            }){
                Text(title)
                    .fontWeight(.heavy)
                    .frame(width: 100, height: 50)
                    .foregroundColor(selectedButton == selfButtonStatus ? .white : .gray)
                
            }
            .cornerRadius(25)
        }
        
    }
}

struct StatusTabButton_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        StatusTabButton(selectedButton: .constant(.Doing), selfButtonStatus: TaskStatus.Doing, namespace: namespace)
    }
}
