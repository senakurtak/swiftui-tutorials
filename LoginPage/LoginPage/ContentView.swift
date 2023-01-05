//
//  ContentView.swift
//  LoginPage
//
//  Created by Sena Kurtak on 12.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body : some View{
        VStack{
            Login()        }
    }
}

struct Login : View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    @State var checkedSubscribe = false
    @State var checkedTerms = false
    
    
    var body : some View{
        
        
        VStack{
            Image("logo")
            Text("Log into your account")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(self.color)
                .padding(.top, 35)
            
            TextField("Email", text: self.$email)
                .padding()
                .padding(.top,25)
            HStack (spacing: 15){
                VStack{
                    if self.visible{
                        TextField("Password", text: self.$pass)
                    }
                    else {
                        SecureField("Password", text: self.$pass)
                    }
                }
                Button(action: {
                    self.visible.toggle()
                }){
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill").foregroundColor(self.color)
                }
            }
            .padding()
        }
        
        
        
        VStack{
            
            
            
            HStack{
                Image(systemName: checkedSubscribe ? "checkmark.square.fill" : "square")
                    .foregroundColor(checkedSubscribe ? Color(red: (104/250), green: 141/250, blue: 102/250) : Color.secondary)
                    .onTapGesture {
                        self.checkedSubscribe.toggle()
                    }
                    .padding()
                Text("Unsubscribe from the mailing list")
                Spacer()
                    .background(.white)
                
            }
            HStack{
                Image(systemName: checkedTerms ? "checkmark.square.fill" : "square")
                    .foregroundColor(checkedTerms ? Color(red: (104/250), green: 141/250, blue: 102/250) : Color.secondary)
                    .onTapGesture {
                        self.checkedTerms.toggle()
                    }
                    .padding()
                Text("I accept the Terms of use")
                Spacer()
                .background(.white)
                
            }
            .background(.white)
            
        }
    }
}
