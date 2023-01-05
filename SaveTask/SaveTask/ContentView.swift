//
//  ContentView.swift
//  SaveTask
//
//  Created by Sena Kurtak on 7.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks : [Task] = []
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
