//
//  ObservedObject04.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

struct ObservedObject04: View {

    var storeClasInstance = StoreDataClass()

    var body: some View {

        VStack {
            // reference to one instance
            ObservedObject01(data: storeClasInstance)
            ObservedObject01(data: storeClasInstance)
        }

    }
}

struct ObservedObject04_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject04()
    }
}
