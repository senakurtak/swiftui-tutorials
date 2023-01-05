//
//  CleaningService.swift
//  WissenSwiftUITutorial
//
//  Created by Sena Kurtak on 22.04.2022.
//

import SwiftUI

struct CleaningService: View {
    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        
        VStack{
            HStack{
            Image(systemName: "chevron.backward.square.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .padding()
                Spacer()
            }
            HStack{
                Image("SenaPP")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                    .padding()
                VStack{
                    Text("Sena Kurtak")
                        .foregroundColor(.black)
                        .font(.title)
                        .fontWeight(.bold)
                
                    Text("cleaner")
                        .foregroundColor(.black)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    HStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                        }
                        Text("5.0 (34)")
                    }
                }
                Spacer()
            }
            HStack{
            Text("Service")
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
                // Seçeneklerin olduğu kısım => dropdown veya pickerview
                    }
            GroupBox {
                DisclosureGroup("Categories"){
    
                    Text("Home Cleaning")
                        .font(.title)

                    Text("Ironing")
                        .font(.title)

                    Text("Weekly Cleaning")
                        .font(.title)

                    Text("Monthly Cleaning")
                        .font(.title)
                }

            }
            HStack{
            Text("Work Area")
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
                .padding()
                Spacer()}
            HStack{
    Slider(
        value: $speed,
        in: 0...100,
        step: 5
            ){
        Text("Speed")
        }
        onEditingChanged: { editing in
        isEditing = editing
        }
        Text("\(speed) sqm")
        .foregroundColor(isEditing ? .red : .blue)
            }
            VStack{
            HStack{
            Text("Date and Time")
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
                Spacer() }
            HStack{
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue )
                    .padding()

                Text("24.04.2022")
                    .foregroundColor(.black)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "clock")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue )
                    .padding()

                Text("9 a.m.")
                    .foregroundColor(.black)
                    .font(.title3)
                    .fontWeight(.bold)
        }

            HStack{
                Text("Address")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    Spacer()
            }
                HStack{
                    Text("Kağıthane/İstanbul")
                        .foregroundColor(.black)
                        .font(.title3)
                    Spacer()
                    Image(systemName: "mappin")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)            }
                HStack{
                    VStack{
                        HStack{
                        Text("Price")
                            .foregroundColor(.black)
                            .font(.title3)
                            .fontWeight(.bold)
                            Spacer()}
                        HStack{
                        Text("$29/day")
                            .foregroundColor(.black)
                            .font(.title3)
                            Spacer()}
                                                    
                        }
                    
                    HStack{
                    Text("Hire now")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .border(Color(red: (102/250), green: 102/250, blue: 102/250), width: 1)
                        .background(.blue)
                        .cornerRadius(20)

                    }
                    

                    
                    Spacer()
                }
            Spacer()
                // Seçeneklerin olduğu kısım => dropdown veya pickerview
                    }

            
            .padding()
            
            Spacer()

        }
        
        
        .background(Color(red: (222/255), green: (236/255), blue: (251/255)))

    }
    
}


struct CleaningService_Previews: PreviewProvider {
    static var previews: some View {
        CleaningService()
    }
}
