//
//  StateView01.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 17/10/2020.
//

import SwiftUI

struct StateView01: View {

    /* Add "@State" to "isShow" variable */
    @State var isShow = false

    var body: some View {
        return VStack {
            Button(action: {isShow.toggle()}, label: {
                Text("Show Text")
            })

            if isShow {
                Text("I love SwiftUI.")
            }
        }
    }
}

struct StateView01_Previews: PreviewProvider {
    static var previews: some View {
        StateView01()
    }
}
