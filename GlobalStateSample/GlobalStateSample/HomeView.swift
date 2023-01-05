//
//  HomeView.swift
//  GlobalStateSample
//
//  Created by Sena Kurtak on 26.06.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            
            NavigationLink(destination: ToDoListView ()){
                Text("Go to ToDoList")
            }
            NavigationLink(destination: AddToDoView ()){
                Text("Go to Add ToDo")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
  
