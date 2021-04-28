//
// CityDetailView.swift
// TestWork
//
// Created by Сергей Зайцев on 28.04.2021.
//

import SwiftUI

struct CityDetailView: View {
    
    @State var city: City
    
    var body: some View {
        VStack {
            Text(city.city)
                .font(.largeTitle)
            Text(city.country)
            Text("\(city.population)")
            Button("Wiki") {
                if let url = URL(string: "https://www.wikidata.org/wiki/\(city.wikiDataId)") {
                    UIApplication.shared.open(url)
                }
            }
            Spacer()
        }
        
    }
}
