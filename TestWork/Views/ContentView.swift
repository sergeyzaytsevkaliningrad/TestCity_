//
//  ContentView.swift
//  TestWork
//
//  Created by Сергей Зайцев on 27.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Label("333",systemImage: "list")
                .font(.largeTitle)
        }
        
        Text("Hello, world!!!!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}