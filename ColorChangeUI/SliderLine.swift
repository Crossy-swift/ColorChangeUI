//
//  SliderLine.swift
//  ColorChangeUI
//
//  Created by Артем Репин on 05.06.2021.
//

import SwiftUI

struct SliderLine: View {
    
    @Binding var value: Double
    
    var color: Color
    
    var body: some View {
        HStack {
            ColorLabel(color: value)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            ColorTF(color: $value)
        }
    }
}

struct SliderLine_Previews: PreviewProvider {
    static var previews: some View {
        SliderLine(value: .constant(201), color: .red)
    }
}
