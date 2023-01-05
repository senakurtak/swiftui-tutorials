//
//  ArrayViewSample.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 24.04.2022.
//

import SwiftUI

struct ArrayViewSample: View {
    
    @State private var newCity = ""
    
    var body: some View {
        TextField("New City",
                  text: $newCity
        ) .padding()
    }
}

struct ArrayViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ArrayViewSample()
    }
}
