//
//  RoundViews.swift
//  Bullseye
//
//  Created by Adam Armstrong on 27/09/2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundRectTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                    .strokeBorder(lineWidth: Constants.General.strokeWidth)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
}

struct RoundedTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("LeaderboardRowViewColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
                RoundedImageViewStroked(systemName: "list.dash")
                }
            HStack {
                RoundedImageViewFilled(systemName: "arrow.counterclockwise")
                RoundedImageViewFilled(systemName:              "list.dash")
                }
            RoundRectTextView(text: "Label")
            RoundedTextView(text: "10")
            }
    }
        }
struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
