//
//  Todo.swift
//  GlobalStateSample
//
//  Created by Sena Kurtak on 26.06.2022.
//

import Foundation

class ToDoStore : ObservableObject {
    
    @Published var todos : [Todo] = []
    
}

struct Todo : Hashable {
    
    var title : String = ""
    var description : String = ""
    
}
