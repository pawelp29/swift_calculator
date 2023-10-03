//
//  MyTF.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct MyTF: View {
    @Binding var text: String
    var body: some View {
        VStack(content: {
            Text("Podaj kolor")
            TextField("Podaj cos", text: $text)
        })
    }
}

#Preview {
    MyTF(text: .constant(""))
}
