//
//  Loding.swift
//  TestWork
//
//  Created by Сергей Зайцев on 28.04.2021.
//

import Foundation
import SwiftUI

class LodingData {
    
    @State private var isLoading = false
    
    func starFakeNNetworkCall() {
        self.isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation(.easeInOut(duration: 0.25)) {
                self.isLoading = false
            }
            
        }
}

}
