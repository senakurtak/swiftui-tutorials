//
//  AddToDoView.swift
//  GlobalStateSample
//
//  Created by Sena Kurtak on 26.06.2022.
//

import SwiftUI

struct AddToDoView: View {

    @EnvironmentObject var todoStore : ToDoStore
    
    @State var todo : Todo = Todo()
    
    var body: some View {
        
        VStack{
            TextField("Title", text: $todo.title)
                .padding()
            TextField("Description", text: $todo.description)
                .padding()
            
            Button("Add"){
                todoStore.todos.append(todo)
            }
        }
    }
}

struct AddToDoView_Previews: PreviewProvider {
    static var previews: some View {
        AddToDoView()
    }
}
