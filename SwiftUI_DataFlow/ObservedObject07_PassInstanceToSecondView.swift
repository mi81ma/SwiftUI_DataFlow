//
//  ObservedObject03.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

// How to sharing the same Data with seperate Views?
struct ObservedObject07: View {
    var storeClasInstance = StoreDataClass()

    var body: some View {
        NavigationView {
            VStack{

                ObservedObject01(data: storeClasInstance)
                ObservedObject01(data: storeClasInstance)

                Spacer()

                NavigationLink(
                    destination: SecondView(storeClasInstance: storeClasInstance),
                    label: {
                        Text("to Next View")
                    })
                    .navigationBarTitle("First View")
            }
        }
    }
}

struct SecondView: View {
    var storeClasInstance: StoreDataClass

    var body: some View {
        ZStack {
            Rectangle().fill(Color.orange)
            VStack {
                ObservedObject01(data: storeClasInstance)
            }
        }
        .navigationBarTitle("Second View")

    }
}


struct ObservedObject07_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject07()
    }
}
