//
//  Login.swift
//  TodoApp
//
//  Created by S-wayMock2 on 2021/02/16.
//

import SwiftUI

struct Login: View {
    
    @State private var userId = ""
    @State private var password = ""
    @State private var rePassword = ""
    @State private var isShowingTodoList = false
    
    var body: some View {
        VStack {
            
            Image("TodoIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 160)
                .offset(y: -50)
                .padding(.bottom, -30)
            
            VStack {
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField("ユーザーIDを入力してください", text: $userId)
                        .padding(.leading, 10)
                        .font(.system(size: 16))
                }
                .padding()
                Divider()
                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 17, height: 20)
                    SecureField("パスワードを入力してください", text: $password)
                        .padding(.leading, 10)
                        .font(.system(size: 16))
                }
                .padding()
                Divider()
                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 17, height: 20)
                    SecureField("パスワードを再度入力してください", text: $rePassword)
                        .padding(.leading, 10)
                        .font(.system(size: 16))
                }
                .padding()
            }
            .frame(height: 230)
            .padding(.horizontal, 10)
            .background(Color.white)
            .cornerRadius(25)
            .padding(.horizontal,10)
            
            Button(action: {
                isShowingTodoList = true
            }) {
                Text("Login")
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: 170, height: 60)
                    .foregroundColor(.white)
            }
            .background(Color("Accent2"))
            .cornerRadius(40)
            .offset(y: -17)
            .padding(.bottom, -17)
            .fullScreenCover(isPresented: $isShowingTodoList, content: {
                TodoList(selectedTab: .Doing)
            })
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .environmentObject(TodoModel())
    }
}
