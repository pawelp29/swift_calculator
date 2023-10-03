//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {

    @State private var text: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("KALKULATOR").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            TextField(
                    "WYNIK",
                    text: $text
                )
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(Color.black, width: 2)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 315, height: 60)
            HStack {
                CalcButton(text: "1", width: 100, height: 60)
                CalcButton(text: "2", width: 100, height: 60)
                CalcButton(text: "3", width: 100, height: 60)
            }
            HStack {
                CalcButton(text: "4", width: 100, height: 60)
                CalcButton(text: "5", width: 100, height: 60)
                CalcButton(text: "6", width: 100, height: 60)
            }
            HStack {
                CalcButton(text: "7", width: 100, height: 60)
                CalcButton(text: "8", width: 100, height: 60)
                CalcButton(text: "9", width: 100, height: 60)
            }
            HStack {
                CalcButton(text: "0", width: 100, height: 60)
                CalcButton(text: "+", width: 100, height: 60)
                CalcButton(text: "-", width: 100, height: 60)
            }
            HStack {
                CalcButton(text: "*", width: 100, height: 60)
                CalcButton(text: "/", width: 100, height: 60)
                CalcButton(text: "sin", width: 100, height: 60)
            }
            CalcButton(text: "Oblicz", width: 315, height: 60)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
