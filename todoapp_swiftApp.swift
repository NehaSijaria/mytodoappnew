//
//  todoapp_swiftApp.swift
//  todoapp_swift
//
//  Created by Neha Sijaria on 2022-11-29.
//

import SwiftUI

@main
struct todoappApp: App {
    
    @StateObject var viewModelList: ViewModelList = ViewModelList()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TaskListView()
                
            }
            .environmentObject(viewModelList)
        }
    }
}
