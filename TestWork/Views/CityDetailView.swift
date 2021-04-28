//
//  CityDetailView.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import SwiftUI

struct CityDetailView: View {
    
    var video: Video
    
    var body: some View {
        
        VStack(spacing: 5) {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .black))
            Text("Loading...")
                .font(.footnote)
                .foregroundColor(.black)
        }
        
        VStack{
            Spacer()
            
            Text(video.title)
                .padding()
                .font(.title2)
                .lineLimit(2)
                
            Spacer()
            
            Link(destination: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA&list=WL&index=138")! , label: {
                Text("Find out more!!!")
                    .bold()
                    .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
    }
}

struct CityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CityDetailView(video: VideoList.topTen.first!)
    }
}
