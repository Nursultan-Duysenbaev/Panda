//
//  SmallAddButton.swift
//  Panda
//
//  Created by Nursultan Duysenbaev on 23/07/23.
//


import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(hue: 0.627, saturation: 0.796, brightness: 0.408))
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
