//
//  ContentView.swift
//  GlobalStateSample
//
//  Created by Sena Kurtak on 26.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var todoStore : ToDoStore = ToDoStore()
    
    var body: some View {
        
        NavigationView{
            HomeView()
        }
        .environmentObject(todoStore)
    }
}
