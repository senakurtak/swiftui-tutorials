//
//  ToDoListView.swift
//  GlobalStateSample
//
//  Created by Sena Kurtak on 26.06.2022.
//

import SwiftUI

struct ToDoListView: View {
    
    @EnvironmentObject var todoStore : ToDoStore
    
    var body: some View {
        
        VStack{
            ForEach(todoStore.todos, id:\.self){item in Text(item.title)
            }
            Text("Length: \(todoStore.todos.count)")
                .padding()
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
