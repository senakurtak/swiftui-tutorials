//
//  EventApp.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 20.04.2022.
//

import Foundation
import SwiftUI

struct EventApp: View {
    var body: some View {
        ZStack{
            VStack {
                    HStack{
                        Spacer()
//                        Image(systemName: "mappin.and.ellipse")
//                            .resizable()
//                            .frame(width: 30, height: 40)
//                            .foregroundColor(.white)
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                    }
                HStack{
                Text("Welcome Back Sena!")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                }
// Search kısmının gelmesi gerekiyor.
                HStack{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding()
                    Text("Search")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(100)
                    Spacer()
    
                }
                HStack{
                    ZStack{
                        Image("dualipa")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(100)
                        Spacer()
                    }
                    
                    Text("You have 8 new events nearby!")
                        .foregroundColor(.white)
                        .padding()
                        .border(Color(red: (102/250), green: 102/250, blue: 102/250), width: 1)
                        .background(Color(red: (104/250), green: 141/250, blue: 102/250))
                        .cornerRadius(100)
                }
                HStack{
                    Text("Upcoming Events")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Text("View All")
                        .foregroundColor(Color(red: 0.402, green: 0.409, blue: 0.408))
                        .font(.body)
                        .fontWeight(.bold)

                }
                ScrollView (.horizontal) {
                    HStack{
                    Image("carnaval")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .cornerRadius(100)
                        Image("coachella")
                            .resizable()
                            .frame(width: 300, height: 100)
                            .cornerRadius(100)
                        Image("bm2")
                            .resizable()
                            .frame(width: 300, height: 100)
                            .cornerRadius(100)
                        Image("diwali")
                            .resizable()
                            .frame(width: 300, height: 100)
                            .cornerRadius(100)
                        Spacer()
                    }
                }
                HStack{
                    Text("Coming Celebrities")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Text("View All")
                        .foregroundColor(Color(red: 0.402, green: 0.409, blue: 0.408))
                        .font(.body)
                        .fontWeight(.bold)
                    Spacer()
                }
                ScrollView (.horizontal) {
                    HStack{
                        VStack{
                    Image("taylorswift")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(100)
                    
                    Text("Taylor Swift")
                        .foregroundColor(.white)
                        .fontWeight(.bold)}
                        
                    VStack{
                    Image("ironmaiden")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(100)
                    Text("Iron Maiden")
                                .foregroundColor(.white)
                                .fontWeight(.bold)}

                    VStack{
                    Image("dualipa")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(100)
                    Text("Dua Lipa")
                                .foregroundColor(.white)
                                .fontWeight(.bold)}
                    VStack{
                    Image("AfterHours")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(100)
                    Text("The Weekend")
                                .foregroundColor(.white)
                                .fontWeight(.bold)}
                    Spacer()
                    }
                }
                Spacer()
            }.padding()
        }
        .background(Color(red: 0.116, green: 0.116, blue: 0.116))
    }
}

struct EventApp_Previews: PreviewProvider {
    static var previews: some View {
        EventApp()
    }
}
