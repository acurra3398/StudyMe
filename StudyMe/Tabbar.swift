//
//  Tabbar.swift
//  StudyMe
//
//  Created by Alex Currano on 6/24/25.
//

import SwiftUI
import FirebaseAnalytics

struct Tabbar: View {
    var body: some View {
        
        TabView {
            Home()
                .tabItem {
                    Image("house")
                    Text("Home")
                        .foregroundColor(.black)
                }
            Assignments()
                .tabItem {
                    Image("memo")
                    Text("Assignments")
                        .foregroundColor(.black)
                }
            ToDo()
                .tabItem {
                    Image("dart")
                    Text("To Do")
                }
            Reminders()
                .tabItem {
                    Image("bell")
                    Text("Reminders")
                }
            StudyMeSettings()
                .tabItem {
                    Image("gear")
                    Text("Settings")
                }
        }
        .analyticsScreen(name: "\(Tabbar.self)")
    }
}

#Preview {
    Tabbar()
}
  
