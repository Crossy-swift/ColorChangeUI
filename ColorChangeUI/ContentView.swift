//
//  ContentView.swift
//  ColorChangeUI
//
//  Created by Артем Репин on 05.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColor = Double.random(in: 0...255)
    @State private var greenColor = Double.random(in: 0...255)
    @State private var blueColor = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                ColorView(redColor: redColor / 255, greenColor: greenColor / 255, blueColor: blueColor / 255)
                SliderLine(value: $redColor, color: .red)
                SliderLine(value: $greenColor, color: .green)
                SliderLine(value: $blueColor, color: .blue)
                Spacer()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
