//
//  Binding02.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

struct Binding02: View {
    @State var order = ""

    var body: some View {
        NavigationView {
            VStack {
                Text(order)
                NavigationLink(
                    destination: InputTextView(text: $order)) {
                        Text("Show Text Input Page")
                    }
                }
            }
        }
    }

struct InputTextView: View {

    @Binding var text: String

    var body: some View {
        ZStack {

            Rectangle().fill(Color.orange).edgesIgnoringSafeArea(.all)
            TextField("Input here", text: $text)
                .padding()
                .textFieldStyle(
                    RoundedBorderTextFieldStyle())
        }
    }
}

struct Binding02_Previews: PreviewProvider {
    static var previews: some View {
        Binding02()
    }
}
