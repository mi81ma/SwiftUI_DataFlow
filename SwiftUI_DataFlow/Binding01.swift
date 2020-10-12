//
//  ContentView.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

struct ContentView: View {
     @State private var count: Int = 0

    var body: some View {
        VStack {
            Text("ContentView: \(count)")
            Button(action: {
                self.count = self.count + 10
            }) {
                Text("count + 10")
            }
            MyStepper(value: $count)
        }
    }
}

struct MyStepper: View {
    @Binding var value: Int

    var body: some View {
        HStack {
            Text("MyStepper: \(value)")
            Button(action: {
                self.value = self.value - 1
            }) {
                Image(systemName: "minus")
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(5)
            }
            Button(action: {
                self.value = self.value + 1
            }) {
                Image(systemName: "plus")
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
