//
//  Login.swift
//  StudyMe
//
//  Created by Alex Currano on 6/23/25.
//

import SwiftUI

final class SignInEmailViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        Task {
            do {
                let reutrnedUserData =  try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success!")
                print(reutrnedUserData)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}
struct Login: View {
    @State private var showingLoginScreen = false
    @StateObject private var viewModel = SignInEmailViewModel()
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                    .analyticsScreen(name: "\(Login.self)")
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)

                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Email", text: $viewModel.email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        
                    
                    SecureField("Password", text: $viewModel.password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Sign In") {
                        viewModel.signIn()
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                .padding()
                    NavigationLink(destination: Signup()) {
                        Text("Make an account")
                    }
                    NavigationLink(destination: Tabbar().navigationBarBackButtonHidden(true), isActive: $showingLoginScreen) {
                        EmptyView()
                    
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
