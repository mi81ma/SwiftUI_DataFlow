//
//  ObservedObject02.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

class MyData2: ObservableObject {
    @Published var score = 0
}

struct ObservedObject02: View {
    @ObservedObject var data = MyData2()

    var body: some View {
        VStack {
            Text("\(data.score)")
            Stepper(value: $data.score, in: 0...100){
                Text("Change Value: ")
            }.fixedSize()
        }
    }
}

struct ObservedObject02_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject02()
    }
}
