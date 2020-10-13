//
//  ObservedObject08.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

struct ObservedObject08: View {
    var storeClasInstance = StoreDataClass()

    var body: some View {
        NavigationView {
            VStack{

                ObservedObject01(data: storeClasInstance)
                ObservedObject01(data: storeClasInstance)

                Spacer()

                NavigationLink(
                    destination: NextView(storeClasInstance: storeClasInstance)){
                        Text("to Next View")
                    }
                    .navigationBarTitle("First View")
            }
        }
    }
}

struct NextView: View {
    var storeClasInstance: StoreDataClass

    var body: some View {
        ZStack {
            Rectangle().fill(Color.orange)
            VStack {
                ObservedObject01(data: storeClasInstance)
                Spacer()

                NavigationLink(destination: NextNextView(storeClasInstance: storeClasInstance)) {
                    Text("to Next Next View")
                }
            }
        }
        .navigationBarTitle("Second View")
    }
}


struct NextNextView: View {
    var storeClasInstance: StoreDataClass

    var body: some View {

        ZStack {
            Rectangle().fill(Color.purple)
            VStack {
                ObservedObject01(data: storeClasInstance)
                Spacer()
            }
        }
        .navigationBarTitle("Third View")
    }


}

struct ObservedObject08_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObject08()
    }
}
