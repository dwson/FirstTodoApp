//
//  practiceApp.swift
//  practice
//
//  Created by Dongwoo Son on 2022/07/23.
//

import SwiftUI

@main
struct practiceApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
