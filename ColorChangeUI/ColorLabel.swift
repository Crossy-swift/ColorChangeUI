//
//  ColorLabel.swift
//  ColorChangeUI
//
//  Created by Артем Репин on 05.06.2021.
//

import SwiftUI

struct ColorLabel: View {
    
    var color: Double
    
    var body: some View {
        Text("\(lround(color))")
            .frame(width: 35)
        
    }
}

struct ColorLabel_Previews: PreviewProvider {
    static var previews: some View {
        ColorLabel(color: 203)
    }
}
