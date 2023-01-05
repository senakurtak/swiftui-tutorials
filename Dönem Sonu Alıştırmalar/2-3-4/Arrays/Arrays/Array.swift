//
//  Array.swift
//  Arrays
//
//  Created by Sena Kurtak on 29.06.2022.
//

import SwiftUI

struct Array: View {
    
    @State var naemArray : [String] = ["Sena", "Busra", "Seyma", "Denizcan", "Ceyhun"]
    var body: some View {
        VStack{
            HStack{
                Text(String(naemArray.count))
            }
            HStack{
                ForEach(naemArray, id: \.self) { item in
                    Text(item)
                }
            }
            Button("Delete All", action: deleteArray)
        }
    }
    
    func deleteArray(){
        naemArray = []
    }
}

struct Array_Previews: PreviewProvider {
    static var previews: some View {
        Array()
    }
}
