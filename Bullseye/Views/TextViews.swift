//
//  TextViews.swift
//  Bullseye
//
//  Created by Adam Armstrong on 25/09/2021.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold() // method with no parameters
            .kerning(2.0) // method with 1 parameter
            .multilineTextAlignment(.center) // method with 1 parameter
            .lineSpacing(4.0) // method with 1 parameter
            .font(.footnote) // method with 1 parameter
            .foregroundColor(Color("TextColor"))
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(1.5)
            .font(.caption)
            .foregroundColor(Color("TextColor"))
        
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .cornerRadius(12.0)
    }
}

struct RoundRectText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .font(.largeTitle)
            .foregroundColor(Color("TextColor") )
            .fontWeight(.black)
            .kerning(-1.0)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)    }
}

struct BigBoldText:View {
    let text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions Text")
            BigNumberText(text: "Big Number Text")
            SliderLabelText(text: "Slider Label Text")
            LabelText(text: "Label Text")
            RoundRectText(text: "Round Rect Text")
            BodyText(text: "Body Text")
            ButtonText(text: "Button Text")
            ScoreText(score: 123)
            DateText(date: Date())
            BigBoldText(text: "Big Bold text")
        }
        .padding()
    }
}
