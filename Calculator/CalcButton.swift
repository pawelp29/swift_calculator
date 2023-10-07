//
//  CalcButton.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct CalcButton: View {
    var text: String
    var width: CGFloat
    var height: CGFloat
    @Binding var operation: String
    var body: some View {
        Button(text) {
            operation = text
        }.frame(width: width, height: height).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CalcButton(text: "", width: 100, height: 60, operation: .constant(""))
}
