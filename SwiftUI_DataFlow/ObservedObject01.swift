//
//  ObservedObject01.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

// 01: Create new class which inherited ObservableObject protocol.
class MyData: ObservableObject {

    // 02: Create the class property with @Published
    @Published var score = 0
}

struct ObservedObject01: View {

    // 03: Set the variable with @ObservedObject as MyData type(the class which created above).
    @ObservedObject var data: MyData

    var body: some View {
        VStack {
            Text("\(data.score)")
            Button(action: {
                self.data.score += 1
            }) {
                Text("Count up")
            }
        }
    }
}

struct ObservedObject01_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject01(data: MyData())
    }
}
