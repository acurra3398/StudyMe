//
//  Home.swift
//  StudyMe
//
//  Created by Alex Currano on 6/24/25.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image("house")
                        .resizable()
                        .imageScale(.small)
                        .foregroundStyle(.tint)
                    Text("Home")
                }
            Text("this is going to be assignments")
                .tabItem {
                    Image("memo")
                        .resizable()
                        .imageScale(.small)
                        .foregroundStyle(.tint)
                    Text("Assignments")
                }
        }
        .padding()
    }
}

#Preview {
    Tabbar()
}
  
