//
//  Student.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 24.04.2022.
//

import Foundation

struct Student : Hashable {
    
    var name : String = ""
    var surname : String = ""
    var address : String = ""
    var id : UUID = UUID()
    // ID tanımlıyorum! Kendince ayrı bir tip (int, string değil gibi düşünebilirsin.)
}
