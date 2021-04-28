//
//  CityDetailView.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import SwiftUI

struct CityDetailView: View {
    @State private var isLoading = false
    
    var video: Video
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Text(video.title)
                .padding()
                .font(.title2)
                .lineLimit(2)
            
            Spacer()
            
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
            Link(destination: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA&list=WL&index=138")! , label: {
                Text("wiki!!!")
                    .bold()
                    .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
            Spacer()
            
            Link(destination: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA&list=WL&index=138")! , label: {
                Text("More ditails!!!")
                    .bold()
                    .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Spacer()
        }.onAppear(perform: starFakeNNetworkCall).edgesIgnoringSafeArea(.all)
    }
    func starFakeNNetworkCall() {
        self.isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation(.easeInOut(duration: 0.25)) {
                self.isLoading = false
            }
            
        }
    }
}

struct CityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CityDetailView(video: VideoList.topTen.first!)
    }
}
