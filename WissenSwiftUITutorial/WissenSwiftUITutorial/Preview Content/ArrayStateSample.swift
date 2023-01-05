//
//  ArrayStateSample.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 24.04.2022.
//

import SwiftUI

struct ArrayStateSample: View {
    
    @State var cities = ["İstanbul", "İzmir", "Ankara", "Trabzon", "Diyarbakır", "Erzurum", "Edirne"]
    
    @State private  var newCity = ""
    
    var body: some View {
        
        VStack{
            TextField("New City",
                      text: $newCity)
            .padding()
            
            Button("Add"){
                if(!newCity.isEmpty){
                cities.append(newCity)
                newCity = ""
                }
            }
            .padding()
            
            Button("Remove All"){
                cities = []
            }
            .padding()
            
            Text("City Count: " + String(cities.count))
            .padding()
                
                ForEach(cities, id:\.self){ item in
                    Text(item)
                    Button("Delete City"){
                        cities = cities.filter { $0 != item }
                    }
                }
//                Button("Delete"){
//                    cities.remove(at: cities.count - 1)
//                }
            
            Spacer()
        }
    }
}

struct ArrayStateSample_Previews: PreviewProvider {
    static var previews: some View {
        ArrayStateSample()
    }
}
