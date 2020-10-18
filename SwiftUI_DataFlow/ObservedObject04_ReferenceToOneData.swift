//
//  ObservedObject04.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

struct ObservedObject04: View {

    // One data class instance
    var storeClasInstance = StoreDataClass()

    var body: some View {

        VStack {
            // Reference to the one instance
            ObservedObjectView01(data: storeClasInstance)
            ObservedObjectView01(data: storeClasInstance)
        }
    }
}

struct ObservedObject04_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject04()
    }
}
