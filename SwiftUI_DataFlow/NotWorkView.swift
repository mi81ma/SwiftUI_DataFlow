//
//  NotWorkView.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 17/10/2020.
//

import SwiftUI

struct NotWorkView: View {
    // The following code is not work...

    var body: some View {

        // 01. This is flag variable
        // When it is "true", I want "Text View is shown up"
        // When it is "false", I want "Text View is hidden"
        var isShow = false

        return VStack {
            // 02. Button for changing "true" or "false"
            Button(action: {isShow.toggle()}, label: {
                Text("Show Text")
            })

            if isShow {
                // 03. This Text View is shown up on "isShow" condition.
                Text("I love Swift.")
            }
        }
    }
}

struct NotWorkView_Previews: PreviewProvider {
    static var previews: some View {
        NotWorkView()
    }
}
