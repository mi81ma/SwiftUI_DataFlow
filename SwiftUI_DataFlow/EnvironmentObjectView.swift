//
//  EnvironmentObject.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 14/10/2020.
//

import SwiftUI

// 01. Create Data class comform ObservableObject protocol
class EnvironmentObjectDataStore: ObservableObject {
    @Published var items = [String]()
}

// 02. Use "environmentObject" modifier at the original View where we want to start to handle data.
// For example "SceneDelegate.swift"

struct EnvironmentObjectView: View {

    @State var item = ""
    @EnvironmentObject var dataStore: EnvironmentObjectDataStore

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.orange)

            VStack {
                TextField("Input Item Name: ", text: $item)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 100, alignment: .center)

                Button(action: {
                    self.dataStore.items.append(self.item)
                }) {
                    Text("Save Button")
                }
            }

        }.navigationTitle("Data Store View")

    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {

    // Create instance for canvas previews
    static let dataStore = EnvironmentObjectDataStore()

    static var previews: some View {
        EnvironmentObjectView()
            .environmentObject(dataStore)
    }
}
