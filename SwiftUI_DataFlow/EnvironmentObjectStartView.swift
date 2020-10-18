//
//  EnvironmentObjectStartView.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 14/10/2020.
//

import SwiftUI

// I. Data Store Class
// 01: Create a new class that conforms "ObservableObject" protocol.
class EnvironmentObjectDataStore: ObservableObject {

    // 02: In the class, create some property that has the "@Published" attribute.
    @Published var items = [String]()
}


struct EnvironmentObjectView: View {

    @State var item = ""

    // 03: In the View struct where the data is used set the property that attached "@EnvironmentObject" on, and the property needs to conform to the class which we created.
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

struct EnvironmentObjectListView: View {

    @EnvironmentObject var dataStore: EnvironmentObjectDataStore

    var body: some View {

        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.orange)
                List {
                    ForEach(dataStore.items, id: \.self) { item in
                        Text(item)
                    }
                }
            }.navigationTitle("List View")
        }
    }
}

struct EnvironmentObjectStartView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: EnvironmentObjectView()){
                    Text("Open Data Store View")
                }
                Spacer(minLength: 100)
                NavigationLink(
                    destination: EnvironmentObjectListView()) {
                    Text("List View")
                }
            }
        }
      
    }
}

struct EnvironmentObjectStartView_Previews: PreviewProvider {
    static let dataStore = EnvironmentObjectDataStore()

    static var previews: some View {

        // 04: Use "environmentObject" modifier at the original View where we want to start to handle data.
        // For example "SceneDelegate.swift"
        EnvironmentObjectStartView()
            .environmentObject(dataStore)
    }
}
