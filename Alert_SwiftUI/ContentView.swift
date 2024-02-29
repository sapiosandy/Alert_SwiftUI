//
//  ContentView.swift
//  Alert_SwiftUI
//
//  Created by Sandra Gomez on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var buttonTapped = ""
    
    var body: some View {
        VStack (spacing: 25) {
            Text("\(buttonTapped)")
            Button(action: {
                showAlert.toggle()
            }) {
                Text("Show Alert")
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Warning"), message: Text ("Do you want to delete the file?"), primaryButton: Alert.Button.default(Text("Primary"), action: {
                    buttonTapped = "Primary tapped"
                }), secondaryButton: Alert.Button.destructive(Text("Secondary"), action: {
                    buttonTapped = "Destructive tapped"
                }))
            })
        }
    }
}

#Preview {
    ContentView()
}
