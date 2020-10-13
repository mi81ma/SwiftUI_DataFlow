//
//  ObservedObject03.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

struct ObservedObject03: View {
    var body: some View {
        VStack {

            // Refer to each seperate instances
            ObservedObject01(data: StoreDataClass())
            ObservedObject01(data: StoreDataClass())
        }
    }
}

struct ObservedObject03_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject03()
    }
}
