//
//  ContentView.swift
//  Alert_SwiftUI
//
//  Created by Sandra Gomez on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Button(action: { showAlert.toggle()
            }) {
                Text ("Show Alert")
            }
            .alert(isPresented: $showAlert) { () -> Alert in
                Alert(title: Text("Warning"), message: Text ("Do you really want to delete this message?"))
            }
        }
    }
}

#Preview {
    ContentView()
}
