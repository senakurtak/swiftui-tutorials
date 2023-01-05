//
//  Model.swift
//  Favorite
//
//  Created by Sena Kurtak on 7.08.2022.
//

import Foundation

struct Item : Identifiable, Codable{
    
    var id: Int
    var title: String
    var description: String
    var isFaved: Bool
    
    static var sampleItems: [Item]{
        var tempList = [Item]()
        
        for i in 1...20 {
            let id = i
            let title = "Title \(i)"
            let description = "This is a sample description"
            tempList.append(Item(id: id, title: title, description: description, isFaved: false))
        }
        return tempList
    }
}
