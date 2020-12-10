//
//  Home.swift
//  SwiftUI Parallax Carousel
//
//  Created by badar on 09/12/20.
//

import SwiftUI

struct Home: View {
    @State var selected : Int = 0
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        
        TabView(selection: $selected) {
            
             // Gambar...
            ForEach(1...6,id: \.self) { index in
                
                Image("p\(index)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height / 2)
                    .cornerRadius(15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

