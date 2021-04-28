//
//  CityView.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import SwiftUI


struct CityView: View {
    @State private var isLoading = false
    
    var cityData :GeoDB = GeoDB()
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView{
            
            List(videos, id: \.id){ item in
                
                NavigationLink( destination: CityDetailView(video: item),
                                label: {
                                    
                                    
                                    
                                    Image("Coolerbackground")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 100)
                                        .cornerRadius(40)
                                    
                                    VStack(alignment: .leading, spacing: 5){
                                        Text(item.title)
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .lineLimit(2)
                                            .minimumScaleFactor(0.5)
                                        
                                        Text(item.uploadDate)
                                            .font(.subheadline)
                                            .minimumScaleFactor(0.5)
                                            .foregroundColor(.secondary)
                                    }
                                    
                                    if isLoading {
                                        ZStack {
                                            Color.white.opacity(0.5).ignoresSafeArea()
                                            
                                            VStack(spacing: 5) {
                                                ProgressView()
                                                    .progressViewStyle(CircularProgressViewStyle(tint: .black))
                                                Text("Loading...")
                                                    .font(.footnote)
                                                    .foregroundColor(.black)
                                            }
                                        }
                                    }
                                    
                                })
            }.navigationBarTitle(Text("Citys"))
            
        }.onAppear(perform: loadData)
    }
    
    func loadData() {
        guard URL(string:  "https://www.youtube.com/watch?v=k5rupivxnMA&list=WL&index=138") != nil else {
            print("Invalid URL")
            return
        }
    }
}


struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
