//
//  ColorTF.swift
//  ColorChangeUI
//
//  Created by Артем Репин on 05.06.2021.
//

import SwiftUI

struct ColorTF: View {
    
    @Binding var color: Double
    
    @State private var showAllert = false
    @State private var newColor = 0.0
    var body: some View {
        TextField("", text: colorValue, onCommit: {
            color = newColor
        })
        .frame(width: 50)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .alert(isPresented: $showAllert) {
            Alert(
                title: Text("Wrong!"),
                message: Text("Enter number from 0 to 255")
            )
        }
    }
}

extension ColorTF {
    var colorValue: Binding<String> {
        Binding<String>(
            get: {
                "\(lround(color))"
            },
            set: {
                if let number = NumberFormatter().number(from: $0) {
                    let currentNumber = number.doubleValue
                    if !(0...255).contains(currentNumber) {
                        newColor = 0
                        showAllert.toggle()
                    }
                    newColor = currentNumber
                } else  if !$0.isEmpty {
                    newColor = 0
                    showAllert.toggle()
                }
            }
        )
    }
}

struct ColorTF_Previews: PreviewProvider {
    static var previews: some View {
        ColorTF(color: .constant(66.0))
    }
}
