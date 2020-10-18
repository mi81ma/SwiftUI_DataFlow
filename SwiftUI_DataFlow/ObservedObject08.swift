//
//  ObservedObject08.swift
//  SwiftUI_DataFlow
//
//  Created by masato on 13/10/2020.
//

import SwiftUI

// I. Data Store Class
// 01: Create a new class that conforms "ObservableObject" protocol.
class AnotherStoreDataClass: ObservableObject {

    // 02: In the class, create some property that has the "@Published" attribute.
    @Published var score = 0
    @Published var text = "Love SwiftUI"

}


// II. ButtonAndText-View
struct ButtonWithTextView: View {

    // 03: In the View struct where the data is used set the property that attached@ObservedObject on, and the property needs to conform to the class which we created.
    @ObservedObject var data: AnotherStoreDataClass

    var body: some View {
        VStack {
            //------ A. Text View --------
            Text("\(data.score)")


            //------- B. Button View -------
            Button(action: {
                self.data.score += 1
            }) {
                Text("Count Up Button")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }
            Text(data.text)
        }.background(Color.gray)
    }
}

// III. main-View
struct ObservedObjectMainView: View {

    // 04: Create data class instance
    @State var storeClasInstance = AnotherStoreDataClass()

    var body: some View {
        NavigationView {
            VStack{

                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity)

                // 05: Create ButtonWithTextView instance with setting the data class instance
                ButtonWithTextView(data: storeClasInstance)

                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity)
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.green)
                    VStack {
                        Text("This is First View's Text")
                        Text(storeClasInstance.text)
                    }
                }
                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity)


                NavigationLink(

                    // 06: Ceate NextView instance and pass the data class instance
                    destination: NextView(storeClasInstance: $storeClasInstance)){
                        Text("to Next View")
                    }
                    .navigationBarTitle("First View")

            }
        }
    }
}

// IV. NextView as "Second View"
struct NextView: View {
    @Binding var storeClasInstance: AnotherStoreDataClass

    var body: some View {
        ZStack {
            Rectangle().fill(Color.orange)
            VStack {
                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity)

                // 07: Create ButtonWithTextView instance with setting the data class instance
                ButtonWithTextView(data: storeClasInstance)


                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity)

                // 08: Ceate NextView instance and pass the data class instance
                NavigationLink(destination: ThirdView(storeClasInstance: $storeClasInstance)) {
                    Text("to Next Next View")
                }
            }
        }
        .navigationBarTitle("Second View")
    }
}

// V. ThirdView as "Third View"
struct ThirdView: View {
    @Binding var storeClasInstance: AnotherStoreDataClass

    var body: some View {

        ZStack {
            Rectangle().fill(Color.purple)
            VStack {
                ButtonWithTextView(data: storeClasInstance)
                Spacer()
                TextField("Text Placeholder: ", text: $storeClasInstance.text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Spacer()

        }
        .navigationBarTitle("Third View")
    }
    }

}

struct ObservedObjectView08_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectMainView()
    }
}
