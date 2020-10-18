//
//  StateView02_PassDataToOtherViews.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 17/10/2020.
//

import SwiftUI


// I. main-View
struct StateView02_PassDataToOtherViews: View {

    // 1. main-View "@State" property.
    @State var showText = ""

    var body: some View {
        NavigationView {
            VStack {
                Text(showText)
                NavigationLink(

                    // 2. sub-View instance with "@State" property.
                    destination: InputTextFieldView(text: $showText)
                ) {
                    Text("Show Text Input Page")
                }
            }
        }
    }
}

// II. sub-View
struct InputTextFieldView: View {

    // 3. sub-View has "@Binding" property
    @Binding var text: String

    var body: some View {
        ZStack {
            Rectangle().fill(Color.orange).edgesIgnoringSafeArea(.all)

            // 4. the TextField View has "@Binding" Property.
            TextField("Input here", text: $text)
                .padding()
                .textFieldStyle(
                    RoundedBorderTextFieldStyle())
        }
    }
}

struct StateView02_PassDataToOtherViews_Previews: PreviewProvider {
    static var previews: some View {
        StateView02_PassDataToOtherViews()
    }
}
