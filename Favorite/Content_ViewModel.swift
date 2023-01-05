//
//  Content_ViewModel.swift
//  Favorite
//
//  Created by Sena Kurtak on 7.08.2022.
//

import Foundation
import SwiftUI

extension ContentView{
    
    final class ViewModel: ObservableObject{
        @Published var items = [Item]()
        @Published var showingFavs = false
        @Published var savedItems : Set<Int> = [1,10]
        var filteredItems : [Item]{
            if showingFavs {
                return items.filter { savedItems.contains($0.id)}
            }else{
                return items
            }
        }
        private var db = Database()
        
        init(){
            //            self.savedItems = db.load()
            self.items = Item.sampleItems
        }
        
        func  sortFavs(){
            withAnimation {
                showingFavs.toggle()
            }
        }
        
        func contains(_ item: Item) -> Bool{
            savedItems.contains(item.id)
        }
        
        func toggleFav(item: Item){
            if contains(item){
                savedItems.remove(item.id)
            }else{
                savedItems.insert(item.id)
            }
            db.save(items: savedItems )
        }
        
    }
}
