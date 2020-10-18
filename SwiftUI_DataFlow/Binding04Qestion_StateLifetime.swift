//
//  Binding04Qestion_StateLifetime.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 17/10/2020.
//

import SwiftUI

struct Binding04Qestion_StateLifetime: View {
    @State private var text: [String] = ["@State test string", "@State test string"]

    @State private var someClass = EnvironmentObjectDataStore()

    var body: some View {
        NavigationView {
            VStack {

                Text(text[0])

                NavigationLink(
                    destination: EnvironmentObjectView2(text: $text)){
                    Text("Open Data Store View")
                }
                Spacer(minLength: 100)
                NavigationLink(
                    destination: EnvironmentObjectListView2(text: $text)) {
                    Text("List View")
                }
            }
        }

    }
}


struct EnvironmentObjectView2: View {

    @Binding var text: [String]

    @State var item = ""
    @EnvironmentObject var dataStore: EnvironmentObjectDataStore

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.orange)

            VStack {
                Text(text[0])
                TextField("Input Item Name: ", text: $item)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 100, alignment: .center)

                Button(action: {
                    self.text.append(self.item)
                }) {
                    Text("Save Button")
                }
            }

        }.navigationTitle("Data Store View")

    }
}

struct EnvironmentObjectListView2: View {

    //@EnvironmentObject var dataStore: EnvironmentObjectDataStore

    @Binding var text: [String]

    var body: some View {

        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.orange)
                List {
                    ForEach(text, id: \.self) { item in
                        Text(item)
                    }
                }
            }.navigationTitle("List View")
        }
    }
}

struct Binding04Qestion_StateLifetime_Previews: PreviewProvider {
    static var previews: some View {
        Binding04Qestion_StateLifetime()
    }
}
