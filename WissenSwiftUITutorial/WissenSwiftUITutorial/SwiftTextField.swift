//
//  SwiftTextField.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 24.04.2022.
//

import SwiftUI

struct SwiftTextField: View {
    
@State private var userName = ""
@State private var password = ""
    
    var body: some View {
    
        VStack{
            
            Text(userName)
            
            TextField("Name:",text: $userName)
                .padding()
            
            SecureField("Password:",text: $password)
                .padding()
            
            Button("Login"){
                
            }
        }
    }
}


struct SwiftTextField_Previews: PreviewProvider {
    static var previews: some View {
        SwiftTextField()
    }
}
