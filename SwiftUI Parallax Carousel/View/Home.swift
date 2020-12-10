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
            ForEach(1...4,id: \.self) { index in
                
                // Geometry reader For Parallax Effect...
                
                GeometryReader { reader in
                    
                    Image("p\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: width, height: height / 2)
                        .cornerRadius(15)
                }
                .frame(height: height / 2)
                .cornerRadius(15)
                .padding(10)
                .background(Color.white)
                .cornerRadius(15)
                // shadow..
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)
                // decreasing width by padding...
                // so outer view only decreased..
                // inner image will be full width....
                .padding(.horizontal, 25)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

