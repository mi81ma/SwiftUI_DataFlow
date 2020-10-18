//
//  KeyPathExample.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

struct KeyPathExample: View {

    let items = ["Apple", "Blue Berry", "Cherry", "Date"]

    var body: some View {

        NavigationView {
            List(items, id: \.self) {
                Text($0)
                Text($0)
            }
            .navigationBarTitle(Text("Today's Fluits"))
        }

    }
}

struct KeyPathExample_Previews: PreviewProvider {
    static var previews: some View {
        KeyPathExample()
    }
}
