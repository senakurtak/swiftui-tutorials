//
//  SwiftStructSample.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 24.04.2022.
//

import SwiftUI

struct SwiftStructSample: View {
    
    var name : String = "Sena"
    var number : Int = 3
    
    var ogrenci1 = Student(name: "Sena", surname: "Kurtak", address: "İstanbul")
    var ogrenci2 = Student(name: "Kadir", surname: "Emre", address: "Sivas")

    var body: some View {
        Text(ogrenci2.address)
    }
}

struct SwiftStructSample_Previews: PreviewProvider {
    static var previews: some View {
        SwiftStructSample()
    }
}
