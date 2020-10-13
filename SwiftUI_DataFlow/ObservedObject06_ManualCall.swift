//
//  ObservedObject06_ManualCall.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI
import Combine

class ManualyPublishDataClass: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()

    var score = 0 {
        willSet {
            objectWillChange.send()
        }
    }
}


struct ObservedObject06: View {
    @ObservedObject var data = ManualyPublishDataClass()

    var body: some View {
        VStack {
            Text("\(data.score)")
            Stepper(value: $data.score, in: 0...100){
                Text("Change Value: ")
            }.fixedSize()
        }
    }
}



struct ObservedObject06_ManualCall_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject06()
    }
}
