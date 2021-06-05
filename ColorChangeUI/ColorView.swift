//
//  ColorView.swift
//  ColorChangeUI
//
//  Created by Артем Репин on 05.06.2021.
//

import SwiftUI

struct ColorView: View {
    
    var redColor: Double
    var greenColor: Double
    var blueColor: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 300, height: 150)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
            .foregroundColor(Color(red: redColor, green: greenColor, blue: blueColor))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 167 / 255, greenColor: 100 / 255, blueColor: 105 / 255)
    }
}
