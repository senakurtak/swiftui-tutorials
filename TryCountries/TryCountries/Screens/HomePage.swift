//
//  HomePage.swift
//  TryCountries
//
//  Created by Sena Kurtak on 19.08.2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack{
            Text("Countries")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black.opacity(0.8))
            HStack{
                Text("**Each Country**")
                    .padding(10)
                    .font(.body)
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }.frame(width: 320, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1.2))
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
