//
//  ContentView.swift
//  TestWork
//
//  Created by Сергей Зайцев on 27.04.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Label("Информарование", systemImage: "list")
                .font(.largeTitle)
                .accentColor(.red)
                .colorScheme(.dark)
                .padding()
            List(instructionTestData) { instruction in
                NavigationLink(destination: PDFKitView(url: Bundle.main.url(forResource: instruction.headline, withExtension: "pdf")!))
                {
                    VStack(alignment: .leading) {
                        Text(instruction.name)
                            .font(.title3)
                        Text(instruction.headline)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
            }
            .cornerRadius(25)
            .padding()
            Spacer()
            
            
        }
        .background(SwiftUI.Image("Coolerbackground").edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
