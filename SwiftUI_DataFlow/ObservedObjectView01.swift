//
//  ObservedObject01.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

// I. Data Store Class
// 01: Create a new class that conforms "ObservableObject" protocol.
class StoreDataClass: ObservableObject {

    // 02: In the class, create some property that has the "@Published" attribute.
    @Published var score = 0
}


// II. main-View
struct ObservedObjectView01: View {

    // 03: In the View struct where the data is used set the property that attached@ObservedObject on, and the property needs to conform to the class which we created.
    @ObservedObject var data: StoreDataClass

    var body: some View {
        VStack {
            //------ A. Text View --------
            Text("\(data.score)")


            //------- B. Button View -------
            Button(action: {
                self.data.score += 1
            }) {
                Text("Count Up Button")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }
            //--------------------------

        }
    }
}


struct ObservedObjectView01_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView01(data: StoreDataClass())
    }
}
