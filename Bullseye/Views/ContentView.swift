//
//  ContentView.swift
//  Bullseye
//
//  Created by Adam Armstrong on 21/09/2021.
//

import SwiftUI

// our template called ContentView which is of type View.
struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    // Property called body that is of type some View
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold() // method with no parameters
                .kerning(2.0) // method with 1 parameter
                .multilineTextAlignment(.center) // method with 1 parameter
                .lineSpacing(4.0) // method with 1 parameter
                .font(.footnote) // method with 1 parameter
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello, SwiftUI")
                self.alertIsVisible = true
            }) {
                Text("HIT ME!")
            }
            .alert(isPresented: $alertIsVisible, content: {
                var roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello"), message: Text("The slider's value is \(roundedValue)."), dismissButton: .default(Text("Awesome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .medium)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320
            ))
    }
}
