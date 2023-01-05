//
//  KadirDeneme.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 26.04.2022.
//

import SwiftUI

struct KadirDeneme: View {
        
        @State var students : [Student] = [
            
            Student(name: "Kadir", surname: "Yıldırım", address: "Şişli"),
            Student(name: "Sena", surname: "Kurtak", address: "Kağıthane")]
        
        @State var name = ""
        @State var surname = " "
        @State var address = " "
        
    var body: some View {
            VStack{
                TextField("Name:",
                          text: $name)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Surname:",
                          text: $surname)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Address:",
                          text: $address)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add"){
                    let newStudent = Student(name: name, surname: surname, address: address)
                    students.append(newStudent)
                    name = ""
                    surname = ""
                    address = ""}
                
                Button("Remove All"){
                    
                    let newStudent = Student(name: name, surname: surname, address: address)
                    students = []
                    
                }
                
                ForEach(students, id:\.self){item in
                    //       Text(item.name + " "  + item.surname + " " + item.address + " " + item.id)
                    Text("\(item.name) \(item.surname) \(item.address) \(item.id)" )
                    
                    Button("Remove Student") {
                        students = students.filter{$0.id != item.id}
                    }
                    .foregroundColor(.red)
                    .padding()
                }
                Spacer()
            }
        }
}

struct KadirDeneme_Previews: PreviewProvider {
    static var previews: some View {
        KadirDeneme()
    }
}
