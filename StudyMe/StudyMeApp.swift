//
//  StudyMeApp.swift
//  StudyMe
//
//  Created by Alex Currano on 6/23/25.
//
import SwiftUI
import Firebase


@main

struct StudyMeApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            Login()
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
  //func application(_ application: UIApplication,
                   //didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    //FirebaseApp.configure()

    //return true
  //}
//}
