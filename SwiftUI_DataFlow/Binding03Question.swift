//
//  Binding03Question.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

struct Binding03Question: View {
    @Binding var count: Int

    var body: some View {
        VStack {
            Text("ContentView: \(count)")
            Button(action: {
                self.count = self.count + 10
            }) {
                Text("count + 10")
            }
            MyStepper02(value: $count)
        }
    }
}

struct MyStepper02: View {
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

//
//struct Binding03Question_Previews: PreviewProvider {
//    static var previews: some View {
//
//        // @Binding valiable is needed to set value
//        Binding03Question(count:)
//    }
//}

