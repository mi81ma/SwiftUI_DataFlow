//
//  EnvironmentObjectStartView.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 14/10/2020.
//

import SwiftUI

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
        EnvironmentObjectStartView()
            .environmentObject(dataStore)
    }
}
