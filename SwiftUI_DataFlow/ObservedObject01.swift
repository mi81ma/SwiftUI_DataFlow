//
//  ObservedObject01.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 12/10/2020.
//

import SwiftUI

// 01: Create new class which inherites "ObservableObject" protocol.
class StoreDataClass: ObservableObject {

    // 02: Create the class property with @Published attribute
    @Published var score = 0
}



struct ObservedObject01: View {

    // 03: Set the variable with @ObservedObject as StoreDataClass type(the class which created above).
    @ObservedObject var data: StoreDataClass

    var body: some View {
        VStack {
            //------ 01.Text View --------
            Text("\(data.score)")
            //--------------------------

            //------- 02. Button View -------
            Button(action: {
                self.data.score += 1
            }) {
                Text("Count up")
            }
            //--------------------------

        }
    }
}



struct ObservedObject01_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject01(data: StoreDataClass())
    }
}
