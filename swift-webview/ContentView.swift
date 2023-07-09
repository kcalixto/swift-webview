//
//  ContentView.swift
//  swift-webview
//
//  Created by Kaua Calixto on 08/07/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
