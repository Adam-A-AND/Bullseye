//
//  Shapes.swift
//  Bullseye
//
//  Created by Adam Armstrong on 27/09/2021.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
            }
            
            RoundedRectangle(cornerRadius: 20.0)
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Capsule()
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Ellipse()
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            Button(action: {
                withAnimation {
                    wideShapes.toggle()
                }
            }) {
                Text("Animate!")
            }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
