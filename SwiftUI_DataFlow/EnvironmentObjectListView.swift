//
//  EnvironmentObjectListView.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 14/10/2020.
//

//import SwiftUI
//
//struct EnvironmentObjectListView: View {
//
//    @EnvironmentObject var dataStore: EnvironmentObjectDataStore
//
//    var body: some View {
//
//        NavigationView {
//            ZStack {
//                Rectangle()
//                    .fill(Color.orange)
//                List {
//                    ForEach(dataStore.items, id: \.self) { item in
//                        Text(item)
//                    }
//                }
//            }.navigationTitle("List View")
//        }
//    }
//}
//
//struct EnvironmentObjectListView_Previews: PreviewProvider {
//    static var dataStore: EnvironmentObjectDataStore {
//        let dataStore=EnvironmentObjectDataStore()
//        dataStore.items = ["Sandwitch", "Toast", "Curry Rice"]
//        return dataStore
//    }
//
//    static var previews: some View {
//        EnvironmentObjectListView()
//            .environmentObject(dataStore)
//    }
//}
