//
//  CityView.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import SwiftUI

struct CityView: View {
    
    var cityData :GeoDB = GeoDB()
    
    @State var citiesArray = [City]()
    
    var body: some View {
        NavigationView{
            List(citiesArray, id: \.city){ item in
                
                NavigationLink( destination: CityDetailView(city: item),
                   label: {
                        
                    
                
                Image("Coolerbackground")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 100)
                    .cornerRadius(40)
                
                VStack(alignment: .leading, spacing: 5){
                    Text(item.city)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    Text(item.country)
                        .font(.subheadline)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.secondary)
                }
                    })
            }.navigationBarTitle(Text("Cities"))
          
        }.onAppear(perform: loadData)
    }
    
    func loadData() {
        cityData.requestHttpMethod { (cities) in
            citiesArray = cities
        }
    }
}


struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
