//
//  ObservedObject05.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

struct ObservedObject05: View {
    var body: some View {
        VStack {
            ObservedObject02()
            ObservedObject02()
        }
    }
}

struct ObservedObject05_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject05()
    }
}
